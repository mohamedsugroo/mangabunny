<template>
  <div id="app">
  	<!-- {{comments}} -->
    <div class="comment" v-for="comment in comments" >
			<div class="row">
				<div class="col-md-1 pt5">
					<img class="comment_avatar" src="https://via.placeholder.com/150" alt="">
				</div>
				<div class="col">
					<div class="media-body p-2">
					    <h4 class="mt-0">
						    Media heading <br>
						    <small class="time_ago">
						    	{{comment.time_ago}}	
					    	</small>
						</h4>
					    {{comment.body}}

					  </div>
					  <button class="btn btn-reply">Reply</button>
            <button class="btn btn-delete" @click="deleteComment(comment)">Delete</button>
				</div>
			</div>
		</div>
  </div>
</template>

<script>
const btnComment = document.querySelector('.submitComment');
export default {
  data() {
  	return {
  		comments: [],
      comment: {id: ''}
  	}
  },
  created() {
    let _this = this;
  	this.get_data()
    if (btnComment.addEventListener) {
      btnComment.addEventListener('click', function() {
        _this.get_data()
      })
    }
  },
  methods: {
    get_data() {
      let url = window.location.href+'.json';
      let _this = this;
      fetch(url)
      .then(function(response) {
        return response.json()
      })
      .then(function(data) {
        // console.log(data.comments)
        _this.comments = data.comments
        // console.log(_this.comments)
      });
    },
    deleteComment(comment) {
      // this.comments.splice(comment);
      console.log(comment.id)
      fetch('/comments/'+comment.id+'.json', {
        method: 'delete',
        // body: JSON.stringify({first_name: "Ricky", last_name: "Bobby"}),
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': Rails.csrfToken()
        },
        credentials: 'same-origin'
      }).then(function(response) {
        // console.log(response);
      });
      this.get_data()
    },
    new_comment() {
      // console.log("this is a simple comment")
    }
  }
};
</script>

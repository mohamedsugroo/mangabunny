<template>
  <div id="app">
  	{{comments}}
    <div class="comment" v-for="comment in comments" >
			<div class="row">
				<div class="col-md-1 pt5">
					<img class="comment_avatar" src="" alt="">
				</div>
				<div class="col">
					<div class="media-body p-2">
					    <h4 class="mt-0">
						    Media heading <br>
						    <small class="time_ago">
						    	{{comment.created_at}}	
					    	</small>
						</h4>
					    {{comment.body}}

					  </div>
					  <button class="btn btn-reply">Reply</button>
				</div>
			</div>
		 
		</div>
  </div>
</template>

<script>
export default {
  data() {
  	return {
  		comments: null
  	}
  },
  created() {
  	let url = window.location.href+'.json';
  	console.log(url)
  	let comments = null;
  	fetch(url)
  	.then(function(response) {
  		return response.json()
  	})
  	.then(function(data) {
  		comments = data.comments;
  		// console.log(comments)
  	});
  	this.comments = comments;
  	console.log(this.comments)
  }
};
</script>

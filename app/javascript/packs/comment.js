class Comment{
	constructor(video, post, user_id, video_id, post_id, body, reply, reply_to) {
		this.video = video,
		this.post = post,
		this.user_id = user_id ,
		this.video_id = video_id ,
		this.post_id = post_id ,
		this.body = body ,
		this.reply = reply ,
		this.reply_to = reply_to 
	}

	new_video_comment() {
		fetch('/comments.json', {
			method: 'post',
			body: JSON.stringify({
				video: this.video,
				user_id: this.user_id,
				video_id: this.video_id,
				body: this.body,
				reply: this.reply,
				reply_to: this.reply_to
			}),
			headers: {
				'Content-Type': 'application/json',
				'X-CSRF-Token': Rails.csrfToken()
			},
			credentials: 'same-origin'
		}).then(function(response) {
			return response.json();
		}).then(function(data) {
			console.log(data);
		});
	}
}

const comment = document.querySelector('.new_comment')
let video, post, user_id, video_id, post_id, body, reply, reply_to;
if (comment) {
	const comment_box = document.querySelector('.comment_box').value
	const area = document.querySelector('.comment_box');
	const btnComment = document.querySelector('.submitComment');

	


	if (area.addEventListener) {
	  area.addEventListener('input', function() {
	    // console.log(area.value)
	    video = document.querySelector('#video').value
		post = document.querySelector('#post').value
		user_id = document.querySelector('#user_id').value
		video_id = document.querySelector('#video_id').value
		post_id = document.querySelector('#post_id').value
		reply = document.querySelector('#reply').value
		reply_to = document.querySelector('#reply_to').value
		body = area.value
	  }, false);
	} else if (area.attachEvent) {
	  area.attachEvent('onpropertychange', function() {
	    // IE-specific event handling code
	  });
	}




	btnComment.addEventListener("click", function() {
		console.log(area.value)
		// (video, post, user_id, video_id, post_id, body, reply, reply_to)
		const p = new Comment(video,post,user_id,video_id,post_id,body,reply,reply_to);
		p.new_video_comment()
		console.log(btnComment);
		console.log(area.value)
	}, false);

	
}





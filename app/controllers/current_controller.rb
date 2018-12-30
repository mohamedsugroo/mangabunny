class CurrentController < ApplicationController
  
  def index
  	name = 'Nimo'
  	signed_in = user_signed_in?
    displayName = ''

  	if user_signed_in?
      # if current_user.username.length > 1
      #   displayName = current_user.username
      # else
      #   displayName = current_user.email
      # end

      username = current_user.to_s.length
      
  		render json: {
  			user_online: signed_in,
  			current_user_status: 'Signed in',
	  		user_name: current_user.name,
        email: current_user.email,
		  	user_id: current_user.id,
  		}
  	else

  		render json: {
  			user_online: signed_in,
  			user_online: false
  		}

	end

  end

end

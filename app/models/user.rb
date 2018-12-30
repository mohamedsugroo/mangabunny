class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def name 
  	if self.username?
  		return self.username
  	else
  		return self.displayname
  	end
  end

  def displayname
  	self.email.split("@").first
  end

end

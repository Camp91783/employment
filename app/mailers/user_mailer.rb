class UserMailer < ActionMailer::Base
  default :from => "sccssoccerproject@gmail.com"
 
  def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end

	def activation_needed_email(user)
	  @user = user
	  @url  = "http://0.0.0.0:3000/users/#{user.activation_token}/activate"
	  mail(:to => user.email,
	       :subject => "Welcome to My Awesome Site")
	end

	def activation_success_email(user)
	  @user = user
	  @url  = "http://0.0.0.0:3000/login"
	  mail(:to => user.email,
	       :subject => "Your account is now activated")
	end
end

class UserMailer < ApplicationMailer
  def notification_comment_email user
    @user = user

    mail to: @user.email, subject: 'You have a comment of your entry'
  end
end

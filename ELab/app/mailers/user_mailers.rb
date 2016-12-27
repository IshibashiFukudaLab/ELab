class MyMailer < ActionMailer::Base
default from: 'yuuuuuuusuke1215@gamil.com'

def welcome_email
    @my = "yuuuuuuusuke1215@gmail.com"
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
end
end
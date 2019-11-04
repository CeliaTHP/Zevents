class UserMailer < ApplicationMailer

default from: 'no-reply@monsite.fr'

def welcome_email(user)

@user = user

@url = 'http://monsite.fr/login'

mail(to: @user.email, subject: 'Bienvenue dans la secte !')
end

end

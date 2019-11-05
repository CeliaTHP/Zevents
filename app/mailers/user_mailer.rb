class UserMailer < ApplicationMailer

default from: 'no-reply@monsite.fr'

def welcome_email(user)

@user = user

@url = 'myzevent.herokuapp.com'

mail(to: @user.email, subject: 'Bienvenue dans la secte !')
end

def password_email(user)

@user = user

@url = 'myzevent.herokuapp.com'

mail(to: @user.email, subject: "Réinitialisation de votre mot de passe")

end

end

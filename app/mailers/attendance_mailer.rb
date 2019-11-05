class AttendanceMailer < ApplicationMailer
default from: 'no-reply@monsite.fr'

def invitation_email(user,creator, event)
@user = user
@event = event
@creator = creator

@url = 'https://myzevent.herokuapp.com/'

mail(to: @creator.email, subject: "Un nouveau participant pour votre event")
end

end

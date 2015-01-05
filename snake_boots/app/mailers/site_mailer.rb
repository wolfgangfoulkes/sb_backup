class SiteMailer < ActionMailer::Base
  default from: "mailer@snake-boots.com"

  def mail_to_me(subject, body)
  	mail(to: 'wolfgangfoulkes@alum.calarts.edu' subject: subject) do |format|
  		format.text { render text: body }
  end
end

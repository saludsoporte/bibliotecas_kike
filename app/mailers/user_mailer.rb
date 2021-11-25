class UserMailer < ApplicationMailer

  def new_libro(user, libro)
    @libro = libro
    mail(to: user.email, subject:  'se han generado linros XXX' )
  end
end

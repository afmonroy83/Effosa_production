class ContactMailer < ApplicationMailer
	def new_order_email
    @contact = params[:contact]

    mail(to: 'felipe97.11@gmail.com', subject: "Mensaje a traves de Effosa.com")
  end
end

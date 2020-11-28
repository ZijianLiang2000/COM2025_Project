class ContactController < ApplicationController
    def request_contact
        name = params[:name]
        email = params[:email]
        telephone = params[:telephone]
        nbaPassCode = params[:nbaPassCode]
        message = params[:message]
        if email.blank?
        flash[:alert] = I18n.t('navigation.request_contact.no_email')
        else
        ContactMailer.contact_email(email,name,nbaPassCode,telephone,message).deliver_now
        flash[:notice] = I18n.t('navigation.request_contact.email_sent')
        end
        redirect_to root_path
        end
end

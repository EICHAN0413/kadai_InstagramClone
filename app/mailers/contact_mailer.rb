class ContactMailer < ApplicationMailer
    def contact_mail(contact)
        @contact = contact
        mail to: "chanike1993@yahoo.co.jp", subject: "お問い合わせの確認メール"
    end    
end

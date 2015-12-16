class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone,     :validate => /\A(\d{3})\D?(\d{3})\D?(\d{4})\z/
  attribute :message
  attribute :street
  attribute :city
  attribute :state
  attribute :zip
  # attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Lead from Lodi Solar Rebate",
      :to => "feasterc@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

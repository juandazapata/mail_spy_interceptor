require 'mail'

class MailSpy
  def initialize(recipients)
    @recipients = normalize_to_array(recipients)
  end

  def delivering_email(message)
    message.bcc = @recipients
  end

  private

  def normalize_to_array(recipients)
    if recipients.respond_to? :split
      recipients.split ','
    else
      recipients
    end
  end
end

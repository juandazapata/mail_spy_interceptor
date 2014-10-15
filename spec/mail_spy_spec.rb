require File.join(File.dirname(__FILE__), '..', 'lib', 'mail_spy')

describe MailSpy do
  it 'overrides bcc field' do
    Mail.register_interceptor MailSpy.new(recipient_string)
    response = deliver_mail
    expect(response.bcc).to eq [recipient_string]
  end

  it 'accepts an array of recipients' do
    Mail.register_interceptor MailSpy.new(recipient_array)
    response = deliver_mail
    expect(response.bcc).to eq recipient_array
  end

  it 'accepts a string of recipients' do
    Mail.register_interceptor MailSpy.new(recipient_string)
    response = deliver_mail
    expect(response.bcc).to eq [recipient_string]
  end

  def recipient_string
    'lorem@ipsum.com'
  end

  def recipient_array
    ['one@example.com', 'two@example.com']
  end

  def deliver_mail
    Mail.defaults do
      delivery_method :test
    end

    Mail.deliver do
      from 'original.from@example.com'
      to 'original.to@example.com'
      cc 'original.cc@example.com'
      bcc 'original.bcc@example.com'
      subject 'some subject'
    end
  end

  after do
    module Mail
      @@delivery_interceptors = []
    end
  end
end

Gem::Specification.new do |spec|
  spec.add_dependency 'mail'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.authors       = ['Juanda Zapata']

  spec.description = <<-eos
    Use MailSpy when you want to BCC yourself in every
    email sent out by your application. I've found it very
    useful when running a startup in a very early stage.
  eos

  spec.email         = ['juanzuluaga@gmail.com']
  spec.files         = ['lib/mail_spy.rb']
  spec.homepage      = 'https://gitub.com/juandazapata/mail_spy'
  spec.name          = 'mail_spy'
  spec.require_paths = ['lib']
  spec.summary       = %q{ Send BCC to yourself }
  spec.test_files    = ['spec/mail_spy_spec.rb']
  spec.version       = '0.0.1'
  spec.license       = 'MIT'
end

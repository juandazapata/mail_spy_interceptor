Gem::Specification.new do |spec|
  spec.add_dependency 'mail'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.authors       = ['Juanda Zapata']

  spec.description = <<-eos
    Use MailSpyInterceptor when you want to BCC yourself in every
    email sent out by your application. I've found it very
    useful when running a startup in a very early stage.
  eos

  spec.email         = ['juanzuluaga@gmail.com']
  spec.files         = ['lib/mail_spy_interceptor.rb']
  spec.homepage      = 'https://github.com/juandazapata/mail_spy_interceptor'
  spec.name          = 'mail_spy_interceptor'
  spec.require_paths = ['lib']
  spec.summary       = %q{ Send BCC to yourself }
  spec.test_files    = ['spec/mail_spy_interceptor_spec.rb']
  spec.version       = '0.0.3'
  spec.license       = 'MIT'
end

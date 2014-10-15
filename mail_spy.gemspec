# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mail_spy/version'

Gem::Specification.new do |spec|
  spec.name          = "mail_spy"
  spec.version       = MailSpy::VERSION
  spec.authors       = ["Juanda Zapata"]
  spec.email         = ["juanzuluaga@gmail.com"]
  spec.summary       = %q{ Send BCC to yourself }
  spec.description   = %q{ Keep an eye on your startup by BCC yourself. }
  spec.homepage      = "https://gitub.com/juandazapata/mail_spy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end

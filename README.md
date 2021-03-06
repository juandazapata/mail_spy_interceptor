# MailSpyInterceptor
[![Build
Status](https://secure.travis-ci.org/juandazapata/mail_spy_interceptor.png)](http://travis-ci.org/juandazapata/mail_spy?branch=master)
[![Code
Climate](https://codeclimate.com/github/juandazapata/mail_spy_interceptor/badges/gpa.svg)](https://codeclimate.com/github/juandazapata/mail_spy_interceptor)

BCC yourself in every email sent by your Rails application.

## Installation

In `Gemfile`:

```ruby
gem 'mail_spy_interceptor'
```

In `config/environments/production.rb`:

```ruby
Mail.register_interceptor MailSpyInterceptor.new(ENV['EMAIL_RECIPIENTS'])
```

From the command line:
```bash
heroku config:add EMAIL_RECIPIENTS='lorem@ipsum.com' --remote production
```

## Credits
MailSpy is maintained by [Juanda Zapata](http://juanda.me)

## License
MailSpy is © 2014 Juanda Zapata. It is free software, and may
be redistributed under the terms specified in the `LICENSE` file.

# Parse Server SDK for Ruby

This gem is a wrapper to Parse Stack, the core piece of the SDK, and several useful plugins. It will also be more inline with keeping track with the released Parse Server version and the features it supports. This bundle then adds several other dependencies not required by the base framework. The features of this bundle include:

* [Parse Stack](https://github.com/modernistik/parse-stack) - the core framework
* [Asynchronous Operations](https://github.com/modernistik/parse-stack-async) - async saves and deletes with callbacks

If you do not need all the features above, we recommend to start with just using [Parse Stack](https://github.com/modernistik/parse-stack) on its own and only add the components as you see fit.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'parse-server-sdk', require: 'parse-server-sdk'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install parse-server-sdk

## Usage
For more information about how to use this SDK, please see the documentation for each of the respective components as linked above.

```ruby
  # Loads all the subcomponents.
  require 'parse-server-sdk'

  Parse.setup app_id: 'myAppId', master_key: 'masterKey', server_url: 'http://localhost:1337/parse'

  user = Parse::User.first
  user.login(passwd)
  user.username = 'frank-sinatra'
  user.save # only updates username field in Parse
  user.save # no-op thanks to dirty tracking!

  class MyCustomClass < Parse::Object
    property :title
  end

  Parse.auto_upgrade! # update your remote schema

  obj = MyCustomClass.new
  obj.title = "My Title"
  obj.new? # => true
  obj.save
  obj.id # => a Parse object id

  # and so on.
  # See https://github.com/modernistik/parse-stack for documentation
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/modernistik/parse-stack.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

# Mina::Yarn

Yarn plugin for [mina](https://github.com/mina-deploy/mina)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mina-yarn'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install mina-yarn
```

## Usage

```ruby
require 'mina/yarn'
```

```ruby
task :deploy => :environment do
    deploy do
        ...
        invoke 'yarn:install'
        ...
    end
end
```


## Configuration

```ruby
set :yarn_bin # default: 'yarn'
set :yarn_options # default: '--production'
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alepee/mina-yarn. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

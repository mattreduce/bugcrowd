# Bugcrowd

(Unofficial) Ruby wrapper for the Bugcrowd HTTP API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bugcrowd'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bugcrowd

## Usage

Locally or in production, expose your Bugcrowd API credentials via environment variables:

```bash
export BUGCROWD_USER=yourusername
export BUGCROWD_PASSWORD=yourpass
```

Then use the client in either of two ways:

```ruby
Bugcrowd.list_bounties

client = Bugcrowd::Client.new(username: 'yourusername', password: 'yourpass')
client.list_bounties
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

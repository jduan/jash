# Jash

Jash allows you to use a hash object like a JSON object via "dot" syntax.

## Installation

Add this line to your application's Gemfile:

    gem 'jash'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jash

## Usage
Example:

```ruby
    h = {
      name: "John",
      items: [1,2,3],
      address: {
        state: "WA",
        city: "Seattle",
        zip: "98103",
        location: {
          lattitude: 47.6,
          longituide: 122.3,
        }
      }
    }

    j = Jash.new(h)

    j.address = {
      state: "MA",
      city: "Boston",
      location: {
        lattitude: 42.4,
        longituide: 71.1,
      }
    }
    j.address.state.should == "MA"
    j.address.city.should == "Boston"
    j.address.location.lattitude == 42.4
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Jimgur
Jimgur is a gem which support uploading images to Imgur

## Usage
```ruby
Jimgur.upload your-http-upload-image
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "jimgur", :git => "git://github.com/thai2811/jimgur.git"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
#$ gem install jimgur
```

## Configuration
Add to `config/initializers/jimgur.rb`:

```ruby
Jimgur.configure do |config|
  config.client_id = "your-Imgur-client-id"
end
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

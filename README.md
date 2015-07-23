# NPM Assets

NPM Assets is entended to replace the asset pipeline in Ruby On Rails applications.

It uses node utilities (browserify) to manage assets and js/css packages.

## Rationale

### Language

We love ES6 and integration into the existing asset pipeline can be a bit hit and miss.

### Packages

We build a lot of reusable javascript libraries, and distribution with npm is increasingly becoming the defacto standard
for deploying packages.

We tried Bower, it has its own issues.

### Testing

Testing javascript in javascript.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'npm-assets'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install npm-assets

## Usage

see `doc/usage.md`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jobready/npm-assets.


# CesdProblems

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/cesd_problems`. To experiment with that code, run `bin/console` for an interactive prompt.

This gem provide ces-d problems and points.

Problems and points return by hash, you can choose problems and points, answers, criteria only.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cesd_problems'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cesd_problems

## Usage

```ruby
require 'cesd_problems'

# get all.
ja_problems = CesdProblems.get_ja_problems
en_problems = CesdProblems.get_en_problems

# get problems and points only.
ja_problems_only = CesdProblems.get_ja_problems(CesdProblems::PROBLEMS)
en_problems_only = CesdProblems.get_en_problems(CesdProblems::PROBLEMS)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/koyupi/cesd_problems. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


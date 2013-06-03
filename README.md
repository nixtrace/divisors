# Divisors.
A divisors finder.
It's able to find the number(s) than has the largest number of divisors in a range.
TDDed using MiniTest::Spec.

## Examples:
```rb
divisors = Divisors.new(10)
p divisors.largest
# => "6:4 8:4 10:4"
```

## Setup.
- Clone the project and install dependencies:

```sh
$ git clone git://github.com/badshark/divisors.git
$ cd divisors
$ bundle install
```

- Run it:

```sh
$ bundle exec ruby run.rb
```

- Test it:

```sh
$ bundle exec rake test
```
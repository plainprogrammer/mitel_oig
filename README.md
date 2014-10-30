# Mitel::OIG

[![Code Climate](https://codeclimate.com/github/plainprogrammer/mitel_oig/badges/gpa.svg)](https://codeclimate.com/github/plainprogrammer/mitel_oig)
[![Test Coverage](https://codeclimate.com/github/plainprogrammer/mitel_oig/badges/coverage.svg)](https://codeclimate.com/github/plainprogrammer/mitel_oig)
[![Build Status](https://travis-ci.org/plainprogrammer/mitel_oig.svg)](https://travis-ci.org/plainprogrammer/mitel_oig)

This gem provides a client library for working with the Open Integration Gateway
provided by Mitel phone systems. The library makes use of both the SOAP and REST
interfaces to try to expose as much of the available functionality as possible.
The library maintains a Ruby-oriented way of interacting with the OIG services
by exposing simple objects that represent and permit interaction with various
elements of the OIG services.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mitel_oig'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mitel_oig

## Usage

### Configuration

Before being able to use any of the Mitel::OIG classes to interact with OIG
services, you will need to setup a valid configuration. The code package already
incorporates the various WSDLs for the OIG services, but configuration for where
to access your specific endpoint is necessary. Configuration is handled globally
by the Mitel::OIG::Configuration class and you can set it up like so:

```ruby
Mitel::OIG::Configuration.set(:endpoint, 'https://192.168.0.1:8080')
Mitel::OIG::Configuration.set(:application_name, 'MyOIGApp')
Mitel::OIG::Configuration.set(:application_password, 'secret')
Mitel::OIG::Configuration.set(:company_name, 'MyCompany')
Mitel::OIG::Configuration.set(:local_password, 'secret')
```

All the options described above are required to properly authenticate your
application with the OIG services. All these credentials are shared globally
within your application and are automatically accessible to the classes provided
by this gem.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mitel_oig/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

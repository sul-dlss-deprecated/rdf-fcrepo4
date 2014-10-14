# rdf-fcrepo4

[![Build Status](https://travis-ci.org/sul-dlss/rdf-fcrepo4.svg)](https://travis-ci.org/sul-dlss/rdf-fcrepo4)
[![Dependency Status](https://gemnasium.com/sul-dlss/rdf-fcrepo4.svg)](https://gemnasium.com/sul-dlss/rdf-fcrepo4) [![Gem Version](https://badge.fury.io/rb/rdf-fcrepo4.svg)](http://badge.fury.io/rb/rdf-fcrepo4)

Contains vocabularies to be used by RDF ruby gem https://github.com/ruby-rdf/rdf/ to simplify coding when using Fedora RDF objects.  

Also contains helper method to strip Fedora triples from an RDF::Graph object.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rdf-fcrepo4'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rdf-fcrepo4

## Usage

    include rdf
    include rdf-fcrepo4
    
    RDF::FCRepo4.Object    #=> RDF::URI("http://fedora.info/definitions/v4/rest-api#object")

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rdf-fcrepo4/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

# DEPRECATED

This gem is deprecated;  rdf-vocab gem (https://github.com/ruby-rdf/rdf-vocab, included in the linkeddata gem) now contains RDF::Vocab::Fcrepo4.  You can find the  helper method to strip Fedora triples from an RDF::Graph object in the triannon gem in lib/oa_graph_helper.rb.

# rdf-fcrepo4

[![Build Status](https://travis-ci.org/sul-dlss/rdf-fcrepo4.svg)](https://travis-ci.org/sul-dlss/rdf-fcrepo4)
[![Dependency Status](https://gemnasium.com/sul-dlss/rdf-fcrepo4.svg)](https://gemnasium.com/sul-dlss/rdf-fcrepo4) [![Gem Version](https://badge.fury.io/rb/rdf-fcrepo4.svg)](http://badge.fury.io/rb/rdf-fcrepo4)

Contains vocabularies to be used by RDF ruby gem https://github.com/ruby-rdf/rdf/ to simplify coding when using Fedora RDF objects.  

Also contains helper method to strip Fedora triples from an RDF::Graph object.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rdf-vocab'  # (was rdf-fcrepo4)
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rdf-vocab # (was rdf-fcrepo4)

## Usage

    require 'rdf/vocab'

    RDF::Vocab::Fcrepo4.Object    #=> RDF::URI("http://fedora.info/definitions/v4/rest-api#object")

# DEPRECATED

This gem is deprecated;  rdf-vocab gem (https://github.com/ruby-rdf/rdf-vocab, included in the linkeddata gem) now contains RDF::Vocab::Fcrepo4.  You can find the  helper method to strip Fedora triples from an RDF::Graph object in the triannon gem in lib/oa_graph_helper.rb.

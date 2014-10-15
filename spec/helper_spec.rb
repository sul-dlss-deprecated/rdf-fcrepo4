require 'spec_helper'
require 'rdf/turtle'

describe RDF::FCRepo4 do
  
  let(:anno_ttl) { File.read(fixture_path + '/open_anno_ldp_container.ttl') }
  
  describe '#remove_fedora_triples' do
    it 'graph returned has no fedora triples' do
      graph = RDF::Graph.new
      graph.from_ttl anno_ttl
      expect(graph.size).to eql 39
      result = graph.query [nil, RDF.type, RDF::URI.new("http://fedora.info/definitions/v4/rest-api#resource")]
      expect(result.size).to eql 1
      result = graph.query [nil, RDF.type, RDF::URI.new("http://www.jcp.org/jcr/nt/1.0base")]
      expect(result.size).to eql 1
      result = graph.query [nil, RDF::URI.new("http://fedora.info/definitions/v4/repository#lastModifiedBy"), nil]
      expect(result.size).to eql 1
      result = graph.query [nil, RDF::URI.new("http://fedora.info/definitions/v4/rest-api#writable"), nil]
      expect(result.size).to eql 1
      result = graph.query [RDF::URI.new("http://fedora.info/definitions/v4/repository#jcr/xml"), nil, nil]
      expect(result.size).to eql 1
      result = graph.query [nil, nil, RDF::URI.new("http://fedora.info/definitions/v4/repository#jcr/xml")]
      expect(result.size).to eql 1

      stripped_graph = RDF::FCRepo4.remove_fedora_triples graph
      expect(stripped_graph.size).to eql 15
      result = stripped_graph.query [nil, RDF.type, RDF::URI.new("http://fedora.info/definitions/v4/rest-api#resource")]
      expect(result.size).to eql 0
      result = stripped_graph.query [nil, RDF.type, RDF::URI.new("http://www.jcp.org/jcr/nt/1.0base")]
      expect(result.size).to eql 0
      result = stripped_graph.query [nil, RDF::URI.new("http://fedora.info/definitions/v4/repository#lastModifiedBy"), nil]
      expect(result.size).to eql 0
      result = stripped_graph.query [nil, RDF::URI.new("http://fedora.info/definitions/v4/rest-api#writable"), nil]
      expect(result.size).to eql 0
      result = stripped_graph.query [RDF::URI.new("http://fedora.info/definitions/v4/repository#jcr/xml"), nil, nil]
      expect(result.size).to eql 0
      result = stripped_graph.query [nil, nil, RDF::URI.new("http://fedora.info/definitions/v4/repository#jcr/xml")]
      expect(result.size).to eql 0
    end
  end
  
end
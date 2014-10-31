require 'spec_helper'
require 'rdf/turtle'

describe RDF::FCRepo4 do
  
  let(:anno_ttl) { File.read(fixture_path + '/open_anno_ldp_container.ttl') }
  
  describe '#remove_fedora_triples' do
    it 'graph returned has no fedora triples' do
      graph = RDF::Graph.new.from_ttl anno_ttl
      expect(graph.size).to eql 39
      expect(graph.query([nil, RDF.type, RDF::URI.new("http://fedora.info/definitions/v4/rest-api#resource")]).size).to eql 1
      expect(graph.query([nil, RDF.type, RDF::URI.new("http://www.jcp.org/jcr/nt/1.0base")]).size).to eql 1
      expect(graph.query([nil, RDF::URI.new("http://fedora.info/definitions/v4/repository#lastModifiedBy"), nil]).size).to eql 1
      expect(graph.query([nil, RDF::URI.new("http://fedora.info/definitions/v4/rest-api#writable"), nil]).size).to eql 1
      expect(graph.query([RDF::URI.new("http://fedora.info/definitions/v4/repository#jcr/xml"), nil, nil]).size).to eql 1
      expect(graph.query([nil, nil, RDF::URI.new("http://fedora.info/definitions/v4/repository#jcr/xml")]).size).to eql 1

      stripped_graph = RDF::FCRepo4.remove_fedora_triples graph
      expect(stripped_graph.size).to eql 14
      expect(stripped_graph.query([nil, RDF.type, RDF::URI.new("http://fedora.info/definitions/v4/rest-api#resource")]).size).to eql 0
      expect(stripped_graph.query([nil, RDF.type, RDF::URI.new("http://www.jcp.org/jcr/nt/1.0base")]).size).to eql 0
      expect(stripped_graph.query([nil, RDF::URI.new("http://fedora.info/definitions/v4/repository#lastModifiedBy"), nil]).size).to eql 0
      expect(stripped_graph.query([nil, RDF::URI.new("http://fedora.info/definitions/v4/rest-api#writable"), nil]).size).to eql 0
      expect(stripped_graph.query([RDF::URI.new("http://fedora.info/definitions/v4/repository#jcr/xml"), nil, nil]).size).to eql 0
      expect(stripped_graph.query([nil, nil, RDF::URI.new("http://fedora.info/definitions/v4/repository#jcr/xml")]).size).to eql 0
    end
    
    it "graph returned doesn't have type http://purl.org/dc/elements/1.1/describable" do
      g = RDF::Graph.new.from_ttl(anno_ttl)
      expect(g.query([nil, RDF.type, RDF::URI.new("http://purl.org/dc/elements/1.1/describable")]).size).to eql 1
      stripped_graph = RDF::FCRepo4.remove_fedora_triples g
      expect(stripped_graph.query([nil, RDF.type, RDF::URI.new("http://purl.org/dc/elements/1.1/describable")]).size).to eql 0
    end
    
    it "graph returned doesn't have type http://fedora.info/definitions/v4/rest-api#DublinCoreDescribable" do
      ldp_cont_ttl = File.read(fixture_path + '/anno_body_ldp_container.ttl')
      g = RDF::Graph.new.from_ttl(ldp_cont_ttl)
      expect(g.query([nil, RDF.type, RDF::URI.new("http://fedora.info/definitions/v4/rest-api#DublinCoreDescribable")]).size).to eql 1
      stripped_graph = RDF::FCRepo4.remove_fedora_triples g
      expect(stripped_graph.query([nil, RDF.type, RDF::URI.new("http://fedora.info/definitions/v4/rest-api#DublinCoreDescribable")]).size).to eql 0
    end
  end
  
end
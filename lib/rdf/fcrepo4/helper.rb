require 'rdf'

# mixin methods
module RDF
  class FCRepo4 < RDF::StrictVocabulary("http://fedora.info/definitions/v4/repository")

    # returns graph without any fedora-specific triples
    def self.remove_fedora_triples graph
      if graph && graph.is_a?(RDF::Graph) && graph.count > 0
        no_fedora_graph = RDF::Graph.new
        fedora_props = RDF::FCRepo4.properties.map {|p| p.to_s}
        # the fedora vocab is not complete and also doesn't cover modeshape triples
        fedora_ns = "http://fedora.info/definitions"
        modeshape_ns = "http://www.jcp.org/jcr"
        graph.each { |stmt|  
          no_fedora_graph << stmt unless fedora_props.include?(stmt.predicate.to_s) || 
                                      fedora_props.include?(stmt.object.to_s) ||
                                      fedora_props.include?(stmt.subject.to_s) ||
                                      stmt.predicate.to_s.match(fedora_ns) ||
                                      stmt.predicate.to_s.match(modeshape_ns) || 
                                      stmt.subject.to_s.match(fedora_ns) ||
                                      stmt.object.to_s.match(fedora_ns) ||
                                      stmt.object.to_s.match(modeshape_ns)
        }
        no_fedora_graph
      else
        graph
      end
    end
  end
end
# -*- encoding: utf-8 -*-
# This file generated automatically using vocab-fetch from http://fedora.info/definitions/v4/repository#
require 'rdf'
module RDF
  # @deprecated:  this class is deprecated in favor of RDF::Vocab::Fcrepo4
  #   from rdf-vocab gem
  class FCRepo4 < RDF::StrictVocabulary("http://fedora.info/definitions/v4/repository#")

    # Class definitions
    term :AnnotatedResource,
      comment: %(A Resource that maintains properties in its own right.).freeze,
      label: "annotated resource".freeze,
      subClassOf: "http://fedora.info/definitions/v4/repository#Resource".freeze,
      type: "owl:Class".freeze
    term :Content,
      comment: %(A bitstream, with no further data properties.).freeze,
      label: "Content".freeze,
      "owl:disjointWith" => [%(http://fedora.info/definitions/v4/repository#Datastream).freeze, %(http://fedora.info/definitions/v4/repository#Object).freeze],
      subClassOf: "http://fedora.info/definitions/v4/repository#Resource".freeze,
      type: "owl:Class".freeze
    term :Datastream,
      comment: %(A container for a bitstream and associated properties.).freeze,
      label: "Fedora datastream".freeze,
      "owl:disjointWith" => %(http://fedora.info/definitions/v4/repository#Object).freeze,
      subClassOf: "http://fedora.info/definitions/v4/repository#AnnotatedResource".freeze,
      type: "owl:Class".freeze
    term :Fixity,
      comment: %(A calculated or recorded result of a fixity measurement on a bitstream.).freeze,
      label: "fixity".freeze,
      "owl:disjointWith" => %(http://fedora.info/definitions/v4/repository#Resource).freeze,
      subClassOf: "http://fedora.info/definitions/v4/repository#Thing".freeze,
      type: "owl:Class".freeze
    term :InboundReferences,
      comment: %(The set of triples representing other repository resources which link to a given resource.).freeze,
      label: "inbound references".freeze,
      subClassOf: "http://fedora.info/definitions/v4/repository#Thing".freeze,
      type: "owl:Class".freeze
    term :Lock,
      comment: %(A marker of exclusive ability to modify a resource by a single user.).freeze,
      label: "lock".freeze,
      "owl:disjointWith" => %(http://fedora.info/definitions/v4/repository#Resource).freeze,
      subClassOf: "http://fedora.info/definitions/v4/repository#Thing".freeze,
      type: "owl:Class".freeze
    term :Object,
      comment: %(A Fedora object: the fundamental quantum of durable content in a Fedora repository.).freeze,
      label: "Fedora object".freeze,
      subClassOf: "http://fedora.info/definitions/v4/repository#AnnotatedResource".freeze,
      type: "owl:Class".freeze
    term :Resource,
      comment: %(An entity that has been committed to the repository for safekeeping. For example, Fedora objects and datastreams are Resources. A Fixity is not, because the provenance of the instance is entirely internal to the repository.).freeze,
      label: "Fedora resource".freeze,
      subClassOf: "http://fedora.info/definitions/v4/repository#Thing".freeze,
      type: "owl:Class".freeze
    term :Thing,
      comment: %(Something that is contemplated in the Fedora repository model.).freeze,
      label: "Fedora thing".freeze,
      type: "owl:Class".freeze
    term :Version,
      label: "A snapshot of a Fedora object at a given point in time.".freeze,
      subClassOf: "http://fedora.info/definitions/v4/repository#Object".freeze,
      type: "owl:Class".freeze

    # Property definitions
    property :baseVersion,
      domain: "http://fedora.info/definitions/v4/repository#Object".freeze,
      label: "base version".freeze,
      range: "http://fedora.info/definitions/v4/repository#Version".freeze,
      type: ["owl:ObjectProperty".freeze, "owl:FunctionalProperty".freeze]
    property :clusterCacheMode,
      label: "clusterCacheMode".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :clusterMembers,
      label: "clusterMembers".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :clusterName,
      label: "clusterName".freeze,
      range: "xsd:string".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :clusterNodeAddress,
      label: "clusterNodeAddress".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :clusterNodeView,
      label: "clusterNodeView".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :clusterPhysicalAddress,
      label: "clusterPhysicalAddress".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :clusterSize,
      label: "clusterSize".freeze,
      range: "xsd:nonNegativeInteger".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :computedChecksum,
      label: "computedChecksum".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :computedSize,
      label: "computedSize".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :couldNotStoreProperty,
      label: "couldNotStoreProperty".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :created,
      label: "created".freeze,
      range: "xsd:dateTime".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :createdBy,
      label: "createdBy".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :frozenMixinTypes,
      label: "frozenMixinTypes".freeze,
      subPropertyOf: "http://fedora.info/definitions/v4/repository#mixinTypes".freeze,
      type: "owl:DatatypeProperty".freeze
    property :frozenPrimaryType,
      label: "frozenPrimaryType".freeze,
      subPropertyOf: "http://fedora.info/definitions/v4/repository#primaryType".freeze,
      type: "owl:DatatypeProperty".freeze
    property :frozenUuid,
      label: "frozenUuid".freeze,
      subPropertyOf: "http://fedora.info/definitions/v4/repository#uuid".freeze,
      type: "owl:DatatypeProperty".freeze
    property :hasChild,
      domain: "http://fedora.info/definitions/v4/repository#Object".freeze,
      label: "has child".freeze,
      type: ["owl:ObjectProperty".freeze, "owl:InverseFunctionalProperty".freeze]
    property :hasContent,
      comment: %(Indicates a Content in which content is stored for this Datastream.).freeze,
      domain: "http://fedora.info/definitions/v4/repository#Datastream".freeze,
      label: "has content".freeze,
      range: "http://fedora.info/definitions/v4/repository#Content".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasDefaultWorkspace,
      comment: %(Indicates the default workspace of the repository.).freeze,
      label: "has default workspace".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasFixity,
      domain: "http://fedora.info/definitions/v4/repository#Content".freeze,
      label: "has fixity".freeze,
      range: "http://fedora.info/definitions/v4/repository#Fixity".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasLocation,
      label: "hasLocation".freeze,
      range: "xsd:anyURI".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :hasLock,
      label: "has lock".freeze,
      range: "http://fedora.info/definitions/v4/repository#Lock".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasLockToken,
      label: "hasLockToken".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :hasMember,
      comment: %(Links to a newly-minted identifier which can be used to create a repository resource.).freeze,
      label: "has member".freeze,
      range: "xsd:anyURI".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasNodeType,
      label: "hasNodeType".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :hasParent,
      domain: "http://fedora.info/definitions/v4/repository#Resource".freeze,
      label: "has parent".freeze,
      range: "http://fedora.info/definitions/v4/repository#Object".freeze,
      type: ["owl:ObjectProperty".freeze, "owl:FunctionalProperty".freeze]
    property :hasResultsMember,
      label: "has results member".freeze,
      range: "http://fedora.info/definitions/v4/repository#Resource".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasVersion,
      domain: "http://fedora.info/definitions/v4/repository#Object".freeze,
      label: "has version".freeze,
      range: "http://fedora.info/definitions/v4/repository#Version".freeze,
      type: "owl:ObjectProperty".freeze
    property :hasVersionLabel,
      label: "hasVersionLabel".freeze,
      range: "xsd:string".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :hasWorkspace,
      comment: %(Links to a workspace of the repository.).freeze,
      label: "has workspace".freeze,
      type: "owl:ObjectProperty".freeze
    property :isCheckedOut,
      label: "isCheckedOut".freeze,
      range: "xsd:boolean".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :isContentOf,
      comment: %(Indicates a Datastream for which this resource contains the content. ).freeze,
      domain: "http://fedora.info/definitions/v4/repository#Content".freeze,
      label: "is content of".freeze,
      range: "http://fedora.info/definitions/v4/repository#Datastream".freeze,
      type: ["owl:ObjectProperty".freeze, "owl:InverseFunctionalProperty".freeze]
    property :isDeep,
      domain: "http://fedora.info/definitions/v4/repository#Lock".freeze,
      label: "isDeep".freeze,
      range: "xsd:boolean".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :isFixityOf,
      domain: "http://fedora.info/definitions/v4/repository#Fixity".freeze,
      label: "is fixity of".freeze,
      range: "http://fedora.info/definitions/v4/repository#Content".freeze,
      type: ["owl:ObjectProperty".freeze, "owl:InverseFunctionalProperty".freeze]
    property :lastModified,
      label: "lastModified".freeze,
      range: "xsd:dateTime".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :lastModifiedBy,
      label: "lastModifiedBy".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :locks,
      domain: "http://fedora.info/definitions/v4/repository#Lock".freeze,
      label: "locks".freeze,
      type: "owl:ObjectProperty".freeze
    property :mimeType,
      label: "mimeType".freeze,
      range: "xsd:string".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :mixinTypes,
      label: "mixinTypes".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :numFixityChecks,
      label: "numFixityChecks".freeze,
      range: "xsd:nonNegativeInteger".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :numFixityErrors,
      label: "numFixityErrors".freeze,
      range: "xsd:nonNegativeInteger".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :numFixityRepaired,
      label: "numFixityRepaired".freeze,
      range: "xsd:nonNegativeInteger".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :numberOfChildren,
      label: "numberOfChildren".freeze,
      range: "xsd:nonNegativeInteger".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :objectCount,
      label: "objectCount".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :objectSize,
      label: "objectSize".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :predecessors,
      domain: "http://fedora.info/definitions/v4/repository#Version".freeze,
      label: "predecessors".freeze,
      range: "http://fedora.info/definitions/v4/repository#Version".freeze,
      type: "owl:ObjectProperty".freeze
    property :primaryType,
      label: "primaryType".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :status,
      label: "status".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze
    property :uuid,
      label: "uuid".freeze,
      subPropertyOf: "owl:topDataProperty".freeze,
      type: "owl:DatatypeProperty".freeze

    # Extra definitions
    term :"",
      comment: %(A first attempt to formalize an ontology for the Fedora data model, intended primarily to make it possible to expose Fedora-curated RDF predicates via de-reference-able URIs.).freeze,
      label: "Fedora Commons Repository Ontology".freeze,
      type: "owl:Ontology".freeze
  end
end

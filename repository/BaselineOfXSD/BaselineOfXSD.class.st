Class {
	#name : #BaselineOfXSD,
	#superclass : #BaselineOf,
	#category : #BaselineOfXSD
}

{ #category : #baselines }
BaselineOfXSD >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'XMLParser'
				with: [ spec
						className: #ConfigurationOfXMLParser;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main/' ].
			spec
				baseline: 'XMLDOMVisitor'
				with: [ spec repository: 'github://peteruhnak/xml-dom-visitor/repository' ].
			spec package: 'XSD-Metamodel' with: [ spec requires: #('XMLParser') ].
			spec
				package: 'XSD-Loader'
				with: [ spec requires: #('XMLParser' 'XMLDOMVisitor' 'XSD-Metamodel') ].
			spec group: 'default' with: #('XSD-Metamodel' 'XSD-Loader') ]
]

Class {
	#name : #BaselineOfDndWorldTracker,
	#superclass : #BaselineOf,
	#category : #BaselineOfDndWorldTracker
}

{ #category : #loading }
BaselineOfDndWorldTracker class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'dndWorldTracker' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfDndWorldTracker >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'DndWorldTracker'
		]
]

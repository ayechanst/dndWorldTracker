Class {
	#name : #WorldTracker,
	#superclass : #Object,
	#instVars : [
		'server',
		'dataStore'
	],
	#category : #DungeonsAndDragons
}

{ #category : #'as yet unclassified' }
WorldTracker >> handleGetRequest: req [
	^ ZnResponse ok: (ZnEntity with: (NeoJSONWriter toString: dataStore))
]

{ #category : #'as yet unclassified' }
WorldTracker >> initialize [
dataStore := Dictionary new.
	server := (Teapot configure: {#port -> 4000})
			GET: '/hello' -> [ :req | 'Hello Faerun' ];
			"POST: '/data' -> [:req| "
	start
]

{ #category : #'as yet unclassified' }
WorldTracker >> server [
	^ server
]

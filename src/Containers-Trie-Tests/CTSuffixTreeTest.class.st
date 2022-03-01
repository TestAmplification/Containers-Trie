Class {
	#name : #CTSuffixTreeTest,
	#superclass : #TestCase,
	#instVars : [
		'suffixTree'
	],
	#category : #'Containers-Trie-Tests'
}

{ #category : #running }
CTSuffixTreeTest >> setUp [
	
	super setUp.
	suffixTree := CTSuffixTree new
]

{ #category : #tests }
CTSuffixTreeTest >> testAddingAStringAddsAllSubstring [

	suffixTree atSuffixesOf: 'banana' put: 1.
	
	#('a' 'na' 'ana' 'nana' 'anana' 'banana')
		do: [ :e | self assert: (suffixTree at: e) equals: 1 ]	
	
]

{ #category : #'as yet unclassified' }
CTSuffixTreeTest >> testAddingAStringAddsAllSubstring_amp_A21_A6 [

	"SmallAmp has derived this test from `CTSuffixTreeTest>>#testAddingAStringAddsAllSubstring` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CTSuffixTree>> #removeKey:ifAbsent:` from 46 to 94:
		Operation: RemoveCaretOperator
		Code snippet: `^ trie removeKey: aString ifAbsent: anAbsentBlock`
		Dynamic state: {#aString->'banana'}
		Mutant id: RemoveCaretOperator#CTSuffixTree#removeKey:ifAbsent:#46#94
"

	<madeBySmallAmp>
	| anUndefinedObject |
	anUndefinedObject := suffixTree removeKey: 'banana' ifAbsent: [  ].
	self assert: anUndefinedObject isNil.
	suffixTree
		atSuffixesOf: 'banana' put: 1;
		allValues
]

{ #category : #tests }
CTSuffixTreeTest >> testRemovingAStringRemovesAllSuffixes [

	suffixTree atSuffixesOf: 'banana' put: 1.
	suffixTree removeSuffixesOf: 'banana'.
	
	#('a' 'na' 'ana' 'nana' 'anana' 'banana')
		do: [ :e | self deny: (suffixTree contains: e) ]	
	
]

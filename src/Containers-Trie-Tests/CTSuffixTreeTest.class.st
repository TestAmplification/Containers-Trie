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
CTSuffixTreeTest >> testAddingAStringAddsAllSubstring_amp [

	"SmallAmp has derived this test from `CTSuffixTreeTest>>#testAddingAStringAddsAllSubstring` by regenerating its assertions.
	This test can cover this part:
	*	In `CTSuffixTree>> #atSuffixesOf:put:` from 106 to 113:
		Operation: RemoveCaretOperator
		Code snippet: `^ aValue`
		Dynamic state: {#aValue->1}
		Mutant id: RemoveCaretOperator#CTSuffixTree#atSuffixesOf:put:#106#113
"

	<madeBySmallAmp>
	| anInteger |
	anInteger := suffixTree atSuffixesOf: 'banana' put: 1.
	self assert: anInteger equals: 1
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

{ #category : #'as yet unclassified' }
CTSuffixTreeTest >> testRemovingAStringRemovesAllSuffixes_amp_L8_A11 [

	"SmallAmp has derived this test from `CTSuffixTreeTest>>#testRemovingAStringRemovesAllSuffixes` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `CTSuffixTree>> #at:update:initial:` from 63 to 127:
		Operation: RemoveCaretOperator
		Code snippet: `^ trie at: aString update: updateBlock initial: initBlocktOrValue`
		Dynamic state: {#aString->'nana'. #initBlocktOrValue->1}
		Mutant id: RemoveCaretOperator#CTSuffixTree#at:update:initial:#63#127
"

	<madeBySmallAmp>
	| aCTOptimizedTrie |
	aCTOptimizedTrie := suffixTree at: 'nana' update: [  ] initial: 1.
	self assert: aCTOptimizedTrie class equals: CTOptimizedTrie.
	suffixTree
		atSuffixesOf: 'banana' put: -1;
		removeSuffixesOf: 'banana'
]

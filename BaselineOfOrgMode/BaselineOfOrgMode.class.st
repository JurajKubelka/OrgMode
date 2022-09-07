Class {
	#name : #BaselineOfOrgMode,
	#superclass : #BaselineOf,
	#category : #BaselineOfOrgMode
}

{ #category : #baselines }
BaselineOfOrgMode >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'PetitParser'
			with: [ 
			spec repository: 'github://moosetechnology/PetitParser:v3.x.x/src' ].
		spec package: 'OrgMode' with: [ spec requires: #( 'PetitParser' ) ].
		spec
			package: 'OrgMode-Tests'
			with: [ spec requires: #( 'OrgMode' ) ] ]
]

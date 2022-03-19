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
			project: 'PetitParser'
			with: [ 
			spec repository: 'github://moosetechnology/PetitParser/src' ].
		spec package: #OrgMode with: [ spec requires: #( 'PetitParser' ) ].
		spec group: 'default' with: #( OrgMode ) ]
]

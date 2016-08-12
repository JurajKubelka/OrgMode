baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec project: 'PetitParser' with: [
				spec
					className: #ConfigurationOfPetitParser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main/' ].
		spec package: #OrgMode with: [
				spec requires: #('PetitParser' ). ].
		spec group: 'default' with:	#(OrgMode). ].

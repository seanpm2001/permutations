.PHONY: build test install update-docs

build:
	idris --build permutations.ipkg

test: 
	idris --testpkg test.ipkg

install:
	idris --install permutations.ipkg
	idris --installdoc permutations.ipkg

update-docs:
	sn c
	rm -rf docs
	idris --build permutations.ipkg
	idris --mkdoc permutations.ipkg
	mv permutations_doc/ docs/

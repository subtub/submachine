install:
	@npm install https://github.com/subtub/subtool/tarball/master

readme:
	@node node_modules/subtool/bin/subtool readme

box:
	@echo "Package the submachine box"
	@vagrant up
	@vagrant package --output submachine.box
	@echo "y" | vagrant destroy

.PHONY: install readme box

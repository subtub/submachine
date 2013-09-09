box:
	@echo "Package the submachine box"
	@vagrant up
	@vagrant package --output submachine.box
	@vagrant destroy

.PHONY: box

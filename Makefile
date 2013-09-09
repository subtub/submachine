box:
	@echo "Package the submachine box"
	@vagrant up
	@vagrant package --output submachine.box
	@echo "y" | vagrant destroy

.PHONY: box

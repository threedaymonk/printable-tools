.PHONY: all

all:
	$(MAKE) -C hex-sockets
	$(MAKE) -C string-lifter

release:
	git tag $$(date -u +"%Y-%m-%d-%H%M")
	git push
	git push --tags

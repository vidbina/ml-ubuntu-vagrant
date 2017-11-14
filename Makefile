validate:
	packer validate packer.json

image: validate
	packer build -on-error=ask ${PACKER_BUILD_ARGS} packer.json

clean:
	rm -rf output-*
	rm -rf *.box

.PHONY:
	validate
	image

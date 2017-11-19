validate:
	packer validate packer.json

image: validate
	packer build -on-error=ask ${PACKER_BUILD_ARGS} packer.json \
		-var 'version=`cat VERSION`'

clean:
	rm -rf output-*
	rm -rf *.box

.PHONY:
	validate
	image

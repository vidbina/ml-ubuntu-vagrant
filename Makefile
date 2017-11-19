VERSION:=$(shell cat VERSION)
USER_VARS=\
	-var 'vagrantcloud_token=${VAGRANTCLOUD_TOKEN}' \
	-var 'version=${VERSION}'

validate:
	packer validate ${USER_VARS} packer.json

image: validate
	packer build -on-error=ask ${PACKER_BUILD_ARGS} ${USER_VARS} packer.json

clean:
	rm -rf output-*
	rm -rf *.box

.PHONY:
	validate
	image

VERSION:=$(shell cat VERSION)
DESCRIPTION:=${DESCRIPTION}
USER_VARS=\
	-var 'vagrantcloud_token=${VAGRANTCLOUD_TOKEN}' \
	-var 'image_version=${VERSION}' \
	-var 'image_description=${DESCRIPTION}'

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

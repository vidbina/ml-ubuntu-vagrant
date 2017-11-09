image:
	packer build -on-error=ask ${PACKER_BUILD_ARGS} packer.json

.PHONY:
	image

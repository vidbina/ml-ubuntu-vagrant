image:
	packer build -on-error=ask -debug packer.json

.PHONY:
	image

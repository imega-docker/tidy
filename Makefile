# Build rootfs

build: build-fs
	@docker build -t imega/tidy .

build-fs:
	@docker run --rm \
		-v $(CURDIR)/build:/build \
		imega/base-builder:1.1.1 \
		--packages="tidyhtml@testing"

.PHONY: build


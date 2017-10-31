DMENU=dmenu
DEP=libX11-devel libXft-devel libXinerama-devel

.PHONY: setup build dep

build: setup
	@echo building...
	git apply --directory=${DMENU} dmenu.patch
	cd ${DMENU}; make

setup:
	git submodule init
	git submodule update
	cd ${DMENU}; make config.h

dep:
	dnf install ${DEP}

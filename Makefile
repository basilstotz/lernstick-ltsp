PHONY: all
all: package 

.PHONY: package
package:
	@find . -name lernstick-ltsp-conf_\*_amd64.deb -exec rm \{\} \;
	@./bin/package.sh



#.PHONY: copy
#copy: package
#	@rm ~/git/edu-desktop/patch/basis/debs.d/ltsp-org-updater*.deb
#	@cp ltsp-org-updater*.deb ~/git/edu-desktop/patch/basis/debs.d/.


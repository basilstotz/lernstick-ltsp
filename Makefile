PHONY: all
all: package hook 

.PHONY: package
package:
	@find . -name lernstick-ltsp_\*_amd64.deb -exec rm \{\} \;
	@./bin/package.sh



.PHONY: hook
hook:
	@./bin/make-live-hook.sh > lernstick-ltsp-hook
	@chmod +x lernstick-ltsp-hook
#	@scp lernstick-ltsp-hook amxach@www.amxa.ch:public_html/debian/lernstick-ltsp-hook



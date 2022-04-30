.PHONY: defualt clean

default: marathon1.flatpak marathon2.flatpak marathon3.flatpak

clean:
	-rm -rf *.build *.flatpak

clean-all: clean
	-rm -rf .flatpak-builder *.repo .download

.download:
	flatpak-builder --download-only _ org.lhowon.alephone.marathon1.yml
	flatpak-builder --download-only _ org.lhowon.alephone.marathon2.yml
	flatpak-builder --download-only _ org.lhowon.alephone.marathon3.yml
	touch $@

%.repo: %.yml .download
	flatpak-builder --repo=$@ --force-clean $(@:.repo=.build) $<

%.flatpak: org.lhowon.alephone.%.yml org.lhowon.alephone.%.repo
	flatpak build-bundle $(<:.yml=.repo) $@ $(<:.yml=)

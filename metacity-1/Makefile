metacity_DATA = \
	button-close-prelight.png \
	button-close-pressed.png \
	button-close-unfocused.png \
	button-close.png \
	button-max-prelight.png \
	button-max-pressed.png \
	button-max-unfocused.png \
	button-max.png \
	button-menu-prelight.png \
	button-menu-pressed.png \
	button-menu-unfocused.png \
	button-menu.png \
	button-min-prelight.png \
	button-min-pressed.png \
	button-min-unfocused.png \
	button-min.png \
	button-unmax-prelight.png \
	button-unmax-pressed.png \
	button-unmax-unfocused.png \
	button-unmax.png \
	metacity-theme-1.xml \
	shine.png
DISTFILES    += $(metacity_DATA)
DISTDIRS     += $(themedir)/metacity-1

$(metacity_DATA): FORCE
	$(install_DATA) metacity-1/$@ $(DESTDIR)$(themedir)/metacity-1/$@

.PHONY: install-metacity

install-metacity: $(metacity_DATA)


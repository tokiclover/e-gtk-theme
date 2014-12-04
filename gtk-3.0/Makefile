GLIB_COMPILE_RESOURCES = glib-compile-resources

gtk3_DATA   = \
	apps/term.css \
	gtk-widgets.css \
	gtk.css \
	settings.ini
dist_IMAGES+= \
	bg_bevel_in_big.png \
	bg_glow_in.png \
	bg_radgrad.png \
	bevel_curved_horiz_out.png \
	box_glow.png \
	day_middle_normal.png \
	horiz_glow_run.png \
	horiz_glow_run_big.png \
	inset_circle_tiny.png \
	knob_sz_14.png \
	led_dark.png \
	led_light.png \
	runner_glow_horiz.png \
	runner_glow_vert.png \
	shadow_square_tiny.png \
	shine.png \
	slider_run_bevel_horiz.png \
	slider_run_bevel_vert.png \
	sym_left_dark_selected.png \
	sym_up_dark_selected.png \
	vert_glow_run.png
DISTFILES  += $(gtk3_DATA) $(dist_IMAGES)
DISTDIRS   += $(themedir)/gtk-3.0/apps

gtk.gresource:
	-mv -f gtk-3.0/gtk.css gtk-3.0/gtk-main.css
	$(GLIB_COMPILE_RESOURCES) --sourcedir=gtk-3.0 gtk-3.0/$@.xml
	-mv -f gtk-3.0/gtk-main.css gtk-3.0/gtk.css
$(gtk3_DATA): FORCE
	$(install_DATA) gtk-3.0/$@ $(DESTDIR)$(themedir)/gtk-3.0/$@

.PHONY: all clean install-gtk3 install-resources

all:

install-gtk3: $(gtk3_DATA) $(dist_IMAGES)
	$(CP_P) gtk-3.0/img $(DESTDIR)$(themedir)/gtk-3.0
install-resources: gtk.gresource
	$(install_DATA) gtk-3.0/gtk.gresource    $(DESTDIR)$(themedir)/gtk-3.0
	$(install_DATA) gtk-3.0/gtk-template.css $(DESTDIR)$(themedir)/gtk-3.0/gtk.css
	$(install_DATA) gtk-3.0/settings.ini     $(DESTDIR)$(themedir)/gtk-3.0
clean:
	rm -f gtk-3.0/gtk.gresource

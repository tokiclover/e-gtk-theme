GLIB_COMPILE_RESOURCES = glib-compile-resources

gtk3_DATA   = \
	apps/term.css \
	gtk-widgets.css \
	gtk.css \
	settings.ini \
	img
gtk3_IMAGES = \
	bevel_dark_out.png \
	bevel_in.png \
	bevel_out.png \
	bg_notebook.png \
	bg_radgrad.png \
	button_clicked.png \
	button_normal.png \
	button_normal.svg \
	button_spin_down_normal.png \
	button_spin_up_normal.png \
	frame_gap.png \
	glow_round_corners.png \
	hole_tiny.png \
	holes_horiz.png \
	holes_tiny_glow_horiz.png \
	holes_tiny_glow_vert.png \
	holes_tiny_horiz.png \
	holes_tiny_vert.png \
	holes_vert.png \
	horiz_glow_run.png \
	inset_shadow.png \
	inset_shadow_circle_tiny.png \
	inset_shadow_circle_tiny_in.png \
	inset_shadow_circle_tiny_ins.png \
	inset_shadow_square_tiny.png \
	inset_shadow_square_tiny_glow_in.png \
	inset_shadow_square_tiny_in.png \
	knob_sz_14.png \
	led_dark.png \
	led_light.png \
	menu.png \
	outline_glow.png \
	runner_glow_horiz.png \
	runner_glow_vert.png \
	separator_horiz.png \
	separator_vert.png \
	shadow_angled_in_sides_glow.png \
	shadow_angled_in_sides_left.png \
	shadow_angled_in_sides_right.png \
	shadow_angled_in_sides_top.png \
	shadow_square_tiny.png \
	shine.png \
	slider_horiz.png \
	slider_run_base_horiz.png \
	slider_run_base_vert.png \
	slider_run_bevel_horiz.png \
	slider_run_bevel_vert.png \
	slider_vert.png \
	sym_down_dark_normal.png \
	sym_down_dark_selected.png \
	sym_down_glow_normal.png \
	sym_down_light_normal.png \
	sym_left_dark_normal.png \
	sym_left_dark_selected.png \
	sym_left_glow_normal.png \
	sym_left_light_normal.png \
	sym_right_dark_normal.png \
	sym_right_dark_selected.png \
	sym_right_glow_normal.png \
	sym_right_light_normal.png \
	sym_up_dark_normal.png \
	sym_up_dark_selected.png \
	sym_up_glow_normal.png \
	sym_up_light_normal.png \
	trough_horiz.png \
	trough_vert.png \
	vert_glow_run.png \
	vgrad_dark.png \
	vgrad_dark_left.png \
	vgrad_dark_right.png \
	vgrad_dark_top.png \
	vgrad_med.png \
	vgrad_med_curved.png \
	vgrad_med_curved_left.png \
	vgrad_med_curved_right.png \
	vgrad_med_curved_top.png
DISTFILES  += $(gtk3_DATA) $(gtk3_IMAGES)
DISTDIRS   += $(themedir)/gtk-2.0/img $(themedir)/gtk-3.0 $(themedir)/gtk-3.0/apps

gtk.gresource:
	-mv -f gtk-3.0/gtk.css gtk-3.0/gtk-main.css
	$(GLIB_COMPILE_RESOURCES) --sourcedir=gtk-3.0 gtk-3.0/$@.xml
	-mv -f gtk-3.0/gtk-main.css gtk-3.0/gtk.css
$(gtk3_DATA): FORCE
	$(install_DATA) gtk-3.0/$@ $(DESTDIR)$(themedir)/gtk-3.0/$@
$(gtk3_IMAGES): FORCE
	$(install_DATA) gtk-2.0/img/$@ $(DESTDIR)$(themedir)/gtk-2.0/img/$@

.PHONY: all clean install-gtk3 install-resources

all:

install-gtk3: $(gtk3_DATA) $(gtk3_IMAGES)
	$(CP_P) gtk-3.0/img $(DESTDIR)$(themedir)/gtk-3.0
install-resources: $(themedir)/gtk-3.0 gtk.gresource $(gtk3_IMAGES)
	$(install_DATA) gtk-3.0/gtk.gresource    $(DESTDIR)$(themedir)/gtk-3.0
	$(install_DATA) gtk-3.0/gtk-template.css $(DESTDIR)$(themedir)/gtk-3.0/gtk.css
	$(install_DATA) gtk-3.0/settings.ini     $(DESTDIR)$(themedir)/gtk-3.0
clean:
	rm -f gtk-3.0/gtk.gresource

gtk2_DATA   = \
	apps/firefoxrc \
	apps/gnome-panelrc \
	apps/gnome-system-monitorrc \
	apps/gnome-terminalrc \
	gtkrc \
	panelrc
gtk2_IMAGES = \
	bevel_curved_horiz_out.png \
	bevel_dark_out.png \
	bevel_in.png \
	bevel_out.png \
	bg_notebook.png \
	button_clicked.png \
	button_normal.png \
	button_normal.svg \
	button_spin_down_normal.png \
	button_spin_up_normal.png \
	frame_gap.png \
	frame_horiz_end.png \
	frame_horiz_start.png \
	frame_vert_end.png \
	frame_vert_start.png \
	glow_round_corners.png \
	hole_tiny.png \
	holes_horiz.png \
	holes_tiny_glow_horiz.png \
	holes_tiny_glow_vert.png \
	holes_tiny_horiz.png \
	holes_tiny_vert.png \
	holes_vert.png \
	inset_shadow.png \
	inset_shadow_circle_tiny.png \
	inset_shadow_circle_tiny_in.png \
	inset_shadow_circle_tiny_ins.png \
	inset_shadow_square_tiny.png \
	inset_shadow_square_tiny_glow_in.png \
	inset_shadow_square_tiny_in.png \
	knob_round_busy.png \
	knob_sz_12.png \
	menu.png \
	menubar_separator.png \
	outline_glow.png \
	panel_bg.png \
	progressbar_run_horiz.png \
	progressbar_run_vert.png \
	progressbar_runner_horiz.png \
	progressbar_runner_vert.png \
	separator_horiz.png \
	separator_vert.png \
	shadow_angled_in_sides_glow.png \
	shadow_angled_in_sides_left.png \
	shadow_angled_in_sides_right.png \
	shadow_angled_in_sides_top.png \
	slider_horiz.png \
	slider_run_base_horiz.png \
	slider_run_base_vert.png \
	slider_vert.png \
	sym_down_dark_normal.png \
	sym_down_dark_selected.png \
	sym_down_glow_normal.png \
	sym_down_light_normal.png \
	sym_left_dark_normal.png \
	sym_left_glow_normal.png \
	sym_left_light_normal.png \
	sym_right_dark_normal.png \
	sym_right_dark_selected.png \
	sym_right_glow_normal.png \
	sym_right_light_normal.png \
	sym_up_dark_normal.png \
	sym_up_glow_normal.png \
	sym_up_light_normal.png \
	tasklist_button_normal.png \
	trough_base_horiz.png \
	trough_base_vert.png \
	trough_horiz.png \
	trough_vert.png \
	vertical_separated_bar_glow.png \
	vgrad_dark.png \
	vgrad_dark_left.png \
	vgrad_dark_right.png \
	vgrad_dark_top.png \
	vgrad_med_curved.png \
	vgrad_med_curved_left.png \
	vgrad_med_curved_right.png \
	vgrad_med_curved_top.png \
	vgrad_med_dark.png
DISTFILES  += $(gtk2_DATA) $(gtk2_IMAGES)
DISTDIRS   += $(themedir)/gtk-2.0/img $(themedir)/gtk-2.0/apps

$(gtk2_DATA): FORCE
	$(install_DATA) gtk-2.0/$@ $(DESTDIR)$(themedir)/gtk-2.0/$@
$(gtk2_IMAGES): FORCE
	$(install_DATA) gtk-2.0/img/$@ $(DESTDIR)$(themedir)/gtk-2.0/img/$@

.PHONY: install-gtk2

install-gtk2: $(gtk2_DATA) $(gtk2_IMAGES)

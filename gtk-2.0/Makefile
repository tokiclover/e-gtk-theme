gtk2_DATA   = \
	apps/gnome-panelrc \
	apps/gnome-system-monitorrc \
	apps/gnome-terminalrc \
	gtkrc \
	panelrc
dist_IMAGES+= \
	bg_menu.png \
	button_spin_down_normal.png \
	button_spin_up_normal.png \
	frame_gap.png \
	frame_horiz_end.png \
	frame_horiz_start.png \
	frame_vert_end.png \
	frame_vert_start.png \
	knob_round_busy.png \
	knob_sz_12.png \
	menubar_separator.png \
	panel_bg.png \
	progressbar_run_horiz.png \
	progressbar_run_vert.png \
	progressbar_runner_horiz.png \
	progressbar_runner_vert.png \
	tasklist_button_normal.png \
	trough_base_horiz.png \
	trough_base_vert.png \
	vertical_separated_bar_glow.png \
	vgrad_med_dark.png
DISTFILES  += $(gtk2_DATA) $(dist_IMAGES)
DISTDIRS   += $(themedir)/gtk-2.0/apps

$(gtk2_DATA): FORCE
	$(install_DATA) gtk-2.0/$@ $(DESTDIR)$(themedir)/gtk-2.0/$@

.PHONY: install-gtk2

install-gtk2: $(gtk2_DATA) $(dist_IMAGES)

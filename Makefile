PACKAGE     = e-gtk-theme
VERSION     = $(shell sed -nre '3s/(.*):.*/\1/p' ChangeLog)
THEME_NAME  = e

prefix      = /usr/local
datadir     = $(prefix)/share
docdir      = $(datadir)/doc/$(PACKAGE)-${VERSION}

CP_P        = cp -P
INSTALL     = install
install_DATA = $(INSTALL) -m 644
MKDIR_P     = mkdir -p

themedir    = $(datadir)/themes/$(THEME_NAME)

theme_DATA  = index.theme start-here.png

apps_DATA   = \
	firefox.stylish
dist_EXTRA  = \
	AUTHORS \
	COPYING \
	README.md \
	ChangeLog
dist_IMAGES = \
	bevel_in.png \
	bevel_out.png \
	button_clicked.png \
	button_normal.png \
	glow_round_corners.png \
	hole_tiny.png \
	holes_horiz.png \
	holes_tiny_glow_horiz.png \
	holes_tiny_glow_vert.png \
	holes_tiny_horiz.png \
	holes_tiny_vert.png \
	holes_vert.png \
	horiz_bar_bottom_glow.png \
	horiz_bar_top_glow.png \
	inset_shadow.png \
	inset_shadow_tiny.png \
	inset_shadow_circle_tiny.png \
	inset_shadow_circle_tiny_in.png \
	inset_shadow_square_tiny.png \
	inset_shadow_square_tiny_in.png \
	separator_horiz.png \
	separator_vert.png \
	shadow_angled_in_sides_glow.png \
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
	trough_horiz.png \
	trough_vert.png \
	vert_bar_left_glow.png \
	vert_bar_right_glow.png \
	vgrad_dark.png \
	vgrad_med_curved.png
openbox_DATA= \
	themerc
DISTDIRS    = \
	$(datadir)/$(PACKAGE)/apps $(docdir) \
	$(themedir)/gtk-2.0/img \
	$(themedir)/openbox-3
DISTFILES   = $(apps_DATA) $(dist_EXTRA) $(theme_DATA) $(openbox_DATA)

FORCE:

-include gtk-3.0/Makefile
-include gtk-2.0/Makefile
-include metacity-1/Makefile

$(apps_DATA): FORCE
	$(install_DATA) apps/$@ $(DESTDIR)$(datadir)/$(PACKAGE)/apps/$@
$(dist_EXTRA): FORCE
	$(install_DATA) $@ $(DESTDIR)$(docdir)/$@
$(dist_IMAGES): FORCE
	$(install_DATA) gtk-2.0/img/$@ $(DESTDIR)$(themedir)/gtk-2.0/img/$@
$(theme_DATA): FORCE
	$(install_DATA) $@ $(DESTDIR)$(themedir)
$(openbox_DATA): FORCE
	$(install_DATA) openbox-3/$@ $(DESTDIR)$(themedir)/openbox-3/$@
$(DISTDIRS): FORCE
	$(MKDIR_P) $(DESTDIR)$@

.PHONY: FORCE install install-all install-apps install-doc install-theme

install-all: $(DISTDIRS) $(DISTFILES)
	ln -fs ../gtk-2.0/img $(DESTDIR)$(themedir)/gtk-3.0/img
install-apps: $(apps_DATA)
install-doc: $(dist_EXTRA)
install: $(DISTDIRS) install-apps install-doc install-theme
install-theme: $(openbox_DATA) install-metacity install-gtk2 install-resources $(theme_DATA)


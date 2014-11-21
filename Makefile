PACKAGE     = e-gtk-theme
VERSION     = $(shell sed -nre '3s/(.*):/\1/p' ChangeLog)
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
DISTDIRS    = $(datadir)/$(PACKAGE)/apps $(docdir) $(themedir)
DISTFILES   = $(apps_DATA) $(dist_EXTRA) $(theme_DATA)

FORCE:

-include gtk-3.0/Makefile
-include gtk-2.0/Makefile
-include metacity-1/Makefile

$(apps_DATA): FORCE
	$(install_DATA) apps/$@ $(DESTDIR)$(datadir)/$(PACKAGE)/apps/$@
$(dist_EXTRA): FORCE
	$(install_DATA) $@ $(DESTDIR)$(docdir)/$@
$(theme_DATA): FORCE
	$(install_DATA) $@ $(DESTDIR)$(themedir)
$(DISTDIRS):
	$(MKDIR_P) $(DESTDIR)$@

.PHONY: FORCE install install-all install-apps install-doc

install-all: $(DISTDIRS) $(DISTFILES)
	$(install_DATA) -D openbox-3/themerc $(DESTDIR)$(themedir)/openbox-3/themerc
install-apps: $(apps_DATA)
install-doc: $(dist_EXTRA)


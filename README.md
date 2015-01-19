Header: e-gtk-theme/README.md, 2015/01/18 13:41:26 Exp

---

> e-gtk-theme is a gtk theme to match the new enlightenment (E17+) default theme

**BIG FAT WARNING:**

    **The name imply that *this is not a GNOME/SystemD OS* theme.**

REQUIREMENTS
------------

* gtk-3.0: >=gtk+-3.6 (background multilayersi required);
* gtk-2.0: pixmap engine (gtk-engines package);

USAGE
-----

* apps/firefox.stylish require stylish addon and then copy/paste the content
in stylish styles editor; Or else, try to copy the content to userContent.css.
(Everything coded in that file try to just force firefox to use gtk native theme.
No hardcoded style is needed. That's all. It should be normaly the opposite,
don't you think? Why te hell Mozzilla is hardcoding the UI theme.
They should just respect the user choice!)

INSTATION
---------

`make prefix=/usr install-all` will suffice to have a lean copy of the theme to
the usual place (/usr/share/theme/e). gtk-3.0 has a glib compilable counterpart
use `make install` instead for this alternative.

TODO
----

* better slider images (slider_{horiz,vert}.png);
* convert close, maximize... image to 6x6px X bitmap images for openbox;
* improve metacity theme (I had enough of it despite metacity drawigs capabilities);
* improve openbox menu (gradient);

ISSUES
------

### gtk+-2:

* left/right active tabs are hard to theme (no option to center image);
* get outlined slider when pressed? (tried already but nothing different is rendered);
* entry inset shadow in combobox is weirdly rendered (v0.19.0+);

### gtk+-3:

* low cost, to not say ugly, image rendering with too much shadow (buttons...);
* dialog action-area label are not well centered;
* there is no way to crop image like border={1,1,1,1} (pixmap engine);
* nothing use global arrow(s);

### both (major version):

* scalling slider_[horiz,vert].png is no good, too much shadow with big sliders;
* cannot use runner glow into trough details;

LICENSE
-------

Distributed under the 2-clause/simplified/new BSD License


PS: an [ebuild][1] is available in my overlay (on github) for gentoo users.

---

[1]: https://github.com/tokiclover/bar-overlay

vim:fenc=utf-8:

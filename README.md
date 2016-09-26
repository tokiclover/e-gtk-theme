Header: e-gtk-theme/README.md, 2015/01/18 13:41:26 Exp

---

> e-gtk-theme is a gtk theme to match the new enlightenment (E17+) default theme

**BIG FAT WARNING:**

    **The name imply that this is not a GNOME/SystemD OS theme.**

**Eye candy preview:**

gtk-2
-----

![](https://cn.pling.com/img//hive/content-pre1/156023-1.png)

gtk-3.16
-----

![](https://cn.pling.com/img//hive/content-pre2/156023-2.png)

REQUIREMENTS
------------

* gtk+-3: >=gtk+-3.6 (background multilayers required);
* gtk+-2: pixmap engine (gtk-engines package);

USAGE
-----

* apps/firefox.stylish require stylish addon and then copy/paste the content
in stylish styles editor; Or else, try to copy the content to userContent.css.
(Everything coded in that file try to just force firefox to use gtk native theme.
No hardcoded style is needed. That's all. It should be normaly the opposite,
don't you think? Why te hell Mozzilla is hardcoding the UI theme.
They should just respect the user choice!)

INSTALLATION
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

(WELL-KNOWN-)ISSUES
------

### web-browsers colors issue:

Be sure to get (firefox)[Classic Theme Restorer][2] addon to get almost everything
as expected but entry background color (forced to be white with white foreground
color) for some web-site like youtube et al. Who can see anything when typing
anything to entry boxes? Sory for that... but the issue is third party forcing
only eitheir back/foreground to be a certain color while leaving the other to be
whatever the UI theme define as default; nothing can be done but try to make the
same mistake on the other end, meaning, forcing both back/foreground colors.

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
[2]: https://addons.mozilla.org/en-US/firefox/addon/classicthemerestorer/

vim:fenc=utf-8:

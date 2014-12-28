Header: e-gtk-theme/README.md, 2014/12/01 13:41:26 Exp

---

e-gtk-theme is a gtk theme to match the new enlightenment DR17 default theme
The name imply that *this is not a GNOME/SystemD OS* theme. There is no way
I am going to extend this theme to support that OS.

# Requirements:

* first of, gt+-3.0 require background multilayers, so >=gtk+-3.6 is required;
* only pixmap engine (gtk-engines package) is required for gtk-2.0 theme;

# Using this theme

* Do you want nice and cleaner icons/image? or anything else?
Just do theme and send them or a patch.

* To use firefox.stylish theme, one will need to install stylish addon, and
then copy/paste the file in stylish styles editor; or else, try to copy
the content to userContent.css
* Everything coded in stylish is to just force firefox to use gtk default
theme. No hardcoded style is need. Plus glitches fixes. That's all. It should
be normaly the opposite, don't you think? Why te hell Mozzilla is hardcoding
dependent engine theme. They should just respect the user choice!

# Instation:

`make prefix=/usr install-all` will suffice to have a lean copy of the theme to
the usual place (/usr/share/theme/e). gtk-3.0 has a glib compilable counterpart
use `make install` instead for this alternative.

# TO DO:

* better slider images (slider_{horiz,vert}.png);

Note: i will try to migrate pixmap engine, as an exercise to improve my c capabilities,
to be able to theme almost everything with images. help needed...

* convert close, maximize... image to 6x6px X bitmap images for openbox;
* improve metacity theme (I had enough of it despite metacity drawigs capabilities);
* improve openbox menu (gradient);

# Issues:

## gtk+-2 specific:

* left/right active tabs are messy theme (no way left/right center image
  as gtk-3; workaround: bigger image);
* there is no way to fill GtkRange trough;
* get outlined slider when pressed? (tried already but nothing different is rendered);
* combox has an unusual rendering of entry inset shadow (added in 0.19.0);

## gtk+-3 specific:

* low cost, to not say ugly, image rendering;
* dialog action-area label are not well centered;
* there is no way to crop image like border={1,1,1,1} (pixmap engine);
* nothing use global arrow(s);

## both major versions specific:

* scalling slider_[horiz,vert].png is no good, too much shadow with big sliders;
* cannot use runner glow into trough details;

PS: an [ebuild][1] is available in my overlay (on github) for gentoo users.

---

[1]: https://github.com/tokiclover/bar-overlay

vim:fenc=utf-8:

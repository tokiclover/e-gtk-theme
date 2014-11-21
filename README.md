Header: e-gtk-theme/README.md, 2014/11/14 13:41:26 Exp

---

e-gtk-theme is a gtk theme to match the new enlightenment DR17 default theme

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

# TO DO:

* better slider images (slider_{horiz,vert}.png);
* improve panel buttons?;
* finish gtk+-3 theme (need documentation), coming... (gtk+-3 grows to be much more
better than gtk+-2 counterpart if themable);

Note: i will try to migrate pixmap engine, as an exercise to improve my c capabilities,
to be able to theme almost everything with images. help needed...

* convert close, maximize... image to 6x6px X bitmap images for openbox;
* improve metacity theme (I had enough of it despite metacity drawigs capabilities);
* improve openbox menu (gradient);
* improve gtk+-2 notebook frame (lready tried);

# Issues:

## gtk+-2 specific:

* inset_shadow.png cannot be included in GtkWidget... gtk+-3 may improve this;
* there is no way to fill GtkRange trough;
* get outlined slider when pressed? (tried already but nothing different is rendered);

## gtk+-3 specific:

* first of, gt+-3 require background multilayers, so >=gtk+-3.6 is required;
* there is no way to crop image like border={1,1,1,1} (pixmap engine);
* check/radio buttons are way too messy and inpredicable with nasty state;
* nothing use global arrow(s);

## both major versions specific:

* scalling slider_[horiz,vert].png is no good, too much shadow with big sliders;
* cannot use runner glow into trough details;

PS: an [ebuild][1] is available in my overlay (on github) for gentoo users.

---

[1]: https://github.com/tokiclover/bar-overlay

vim:fenc=utf-8:

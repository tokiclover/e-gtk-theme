`$Id: README.md, 2012/06/25 18:11:51 -tclover Exp $`

---

e-gtk-theme is a gtk theme to match the new enlightenment DR17 default theme

# Using this theme

* Do you want nice and cleaner icons/image? Just do theme and send them.
They will be included in the next release!

* Do you want a better firefox theme? Just improve the stylish file
(in apps/firefox.stylish) and send a patch. It will be included
in the next release.

* Do you wantt a chromium theme? Just do and send it. ...

* etc.

* To use firefox.stylish theme, one will need to install stylish addon, and
then copy/paste the file in stylish styles editor.

* Everything coded in stylish is just try to force firefox to use gtk default
theme. No hardcoded style is need. Plus glitches fixes. That's all. It should
be normaly the opposite, don't you think? Why te hell Mozzilla is hardcoding
dependent engine theme. They should just respect the user choice!

# TO DO:

* improve toolbar/entry padding (spent minutes to that already);
* better slider images (slider_{horiz,vert}.png;
* better insensitive left and right arrows (sym_{left,right}_dark_{normal,selected}.png);
* better memu image;
* better tabs (notebook) image?;
* better media buttons;
* improve panel buttons?;
* finish gtk+-3 theme (need documentation);
* convert close, maximize... image to 6x6px X bitmap images for openbox;
* improve metacity heme (I had enough of it despite metacity drawigs capabilities);
* improve openbox menu (gradient);
* improve notebook frame (it's not that easy to get something better);
* get outlined slider when pressed? (tried already but nothing different is rendered);

# Issues:

* gtk stok icons may override provided icon theme ones;
* afailk, I cannot do anything to fill GtkRange trough because the only way to it is to
use images for th trough and then... the rendered object is ugly;
* inset_shadow.png cannot be included in GtkWidget... gtk+-3 may improve this;
* fix for/background and text color in icon view (text has the same color as the background),
pcmanfm has this issue but nothing found to fix it;

PS: an ebuild is available in my overlay (on github) for gentoo users.

---

`vim:fenc=utf-8:`

# Xwinwrap

My fork of xwinwrap.  
Xwinwrap allows you to stick most of the apps to your desktop background.  
My use case - can use gif as a background

### Compiling

`gcc -Wall xwinwrap.c -lX11 -lXext -lXrender -g -o xwinwrap`

You may have to use `-L` flag to specify directory for xlib.
e.g. `gcc -Wall xwinwrap.c -L /usr/lib/x86_64-linux-gnu -lX11 -lXext -lXrender -g -o xwinwrap`

### Usage

```
Usage: xwinwrap [-g {w}x{h}+{x}+{y}] [-ni] [-argb] [-fs] [-s] [-st] [-sp] [-a] [-b] [-nf] [-o OPACITY] [-sh SHAPE] [-ov]-- COMMAND ARG1...
Options:
             -g      - Specify Geometry (w=width, h=height, x=x-coord, y=y-coord. ex: -g 640x480+100+100)
             -ni     - Ignore Input
             -argb   - RGB
             -fs     - Full Screen
             -un     - Undecorated
             -s      - Sticky
             -st     - Skip Taskbar
             -sp     - Skip Pager
             -a      - Above
             -b      - Below
             -nf     - No Focus
             -o      - Opacity value between 0 to 1 (ex: -o 0.20)
             -sh     - Shape of window (choose between rectangle, circle or triangle. Default is rectangle)
             -ov     - Set override_redirect flag (For seamless desktop background integration in non-fullscreenmode)
             -debug  - Enable debug messages
```
Example
`./xwinwrap -g 400x400 -ni -s -nf -b -un -argb -sh circle -- gifview -w WID mygif.gif -a`

### Changes

* Added ability to make undecorated window
* Changed how desktop window is found
* Refactored window hints

----
Original source - https://launchpad.net/xwinwrap

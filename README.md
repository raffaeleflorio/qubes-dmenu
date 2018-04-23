# qubes-dmenu

dmenu (https://tools.suckless.org/dmenu) for Qubes OS


# dwm patch
dwm for Qubes OS at https://github.com/raffaeleflorio/qubes-dwm

# Installation instruction
Clone this repo in a vm:
```
$ git clone https://github.com/raffaeleflorio/qubes-dmenu.git
```

Check signature (you can get my pgp key from https://raffaeleflorio.github.io or from https://pgp.mit.edu, of course check its fingerprint):
```
$ git log --show-signature -1
```

Install dependecies, apply the patch and build dmenu:
```
# make dep
$ make
```

Install in Dom0:
```
Dom0# qvm-run --pass-io <vmname> "cat /path/to/qubes-dmenu/dmenu/dmenu" > /usr/local/bin/dmenu
Dom0# chmod u+x /usr/local/bin/dmenu
Dom0# qvm-run --pass-io <vmname> "cat /path/to/qubes-dmenu/dmenu/dmenu_path" > /usr/local/bin/dmenu_path
Dom0# chmod u+x /usr/local/bin/dmenu_path
Dom0# qvm-run --pass-io <vmname> "cat /path/to/qubes-dmenu/dmenu/dmenu_run" > /usr/local/bin/dmenu_run
Dom0# chmod u+x /usr/local/bin/dmenu_run
Dom0# qvm-run --pass-io <vmname> "cat /path/to/qubes-dmenu/dmenu/stest" > /usr/local/bin/stest
Dom0# chmod u+x /usr/local/bin/stest
```

If you encounter some problems, contact me!

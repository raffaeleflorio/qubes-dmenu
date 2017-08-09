# qubes-dmenu

Qubes OS patch for dmenu 4.7 (http://tools.suckless.org/dmenu).

# dwm patch
Qubes OS patch for dwm 6.1 at https://github.com/raffaeleflorio/qubes-dwm

# Installation instruction
Clone this repo in a vm:
```
$ git clone https://github.com/raffaeleflorio/qubes-dmenu.git
```

Check signature (you can get my pgp key from https://raffaeleflorio.github.io or from pgp.mit.edu, of course check its fingerprint):
```
$ git log --show-signature -1
```

Clone dmenu in the same vm. The code with various clone urls is here: http://git.suckless.org/dmenu

Copy the patch in the dwm directory:
```
$ cp qubes-dmenu/dmenu-4.7.patch dmenu/
```

Apply the patch:
```
$ cd dmenu
$ make config.h
$ git apply dmenu-4.7.patch
```

Install dependencies and compile dmenu:
```
# dnf install $(cat dependencies)
$ make
```

Copy needed files to Dom0:
```
Dom0# qvm-run --pass-io <vmname> "cat /path/to/dmenu/dmenu" > /usr/local/bin/dmenu
Dom0# chmod u+x /usr/local/bin/dmenu
Dom0# qvm-run --pass-io <vmname> "cat /path/to/dmenu/dmenu_path" > /usr/local/bin/dmenu_path
Dom0# chmod u+x /usr/local/bin/dmenu_path
Dom0# qvm-run --pass-io <vmname> "cat /path/to/dmenu/dmenu_run" > /usr/local/bin/dmenu_run
Dom0# chmod u+x /usr/local/bin/dmenu_run
Dom0# qvm-run --pass-io <vmname> "cat /path/to/dmenu/stest" > /usr/local/bin/stest
Dom0# chmod u+x /usr/local/bin/stest
```

If you encounter some problems, contact me!

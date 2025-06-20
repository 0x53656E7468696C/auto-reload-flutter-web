# auto-reload-flutter-web
Shell script to make your flutter to do reload on file changes while running on web server with custom port.

auto hotreload and auto reload won't work if you run your app through terminal, Some times I run flutter in web server mode on android and noticed that reload wont happens unless I manually press reload key on terminal 

This script fixes that.

### put that .ahr.sh in your project dir where your pubspec is located.
### type chmod +x .ahr.sh.
###  Now ./.ahr.sh 

you are ready to go. wait have you installed. it depends on it so install entr.  ,


–––––––––––––––––––––––––––––––––––––––––––––––––––––––––
Installing entr
–––––––––––––––––––––––––––––––––––––––––––––––––––––––––

Linux (Debian/Ubuntu / WSL / Linux Mint / Pop!_OS / …)

bash

sudo apt update
sudo apt install entr

Fedora / RHEL / CentOS / Alma

bash

sudo dnf install entr

Arch Linux / Manjaro

bash

sudo pacman -S entr

openSUSE

bash

sudo zypper install entr

MacOS (with Homebrew)

bash

brew install entr

––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
Termux

Termux usually provides entr in its “main” or “x11” repository. Simply do:

bash

pkg update
pkg install entr

if you are working in project idx aka firebase studio, add that dev.nix packages


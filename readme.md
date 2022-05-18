# Docker-compose for MatLab
Make sure you have `docker` and `docker-compose` installed.

## Quick start
Clone this repository and run `./matlab.sh`, thats it.

## Useful info
Running `matlab.sh` will create a docker container with matlab if it doesn't exist yet, and will open a browser window to access it.

This is also the file you want to alias to `matlab` in your terminal (add `alias matlab="/your/clone/location/./matlab.sh"` to your `~/.zshrc`or `~/.bashrc`)

## Install.sh: for rofi useres
This script is only useful if you use an application launcher like rofi which looks in `~/.local/share/applications` for a .desktop file.
Running `install.sh` will create a matlab.desktop file in `~/.local/share/applications/` so it shows up in your application launcher.
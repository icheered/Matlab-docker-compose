# Docker-compose for MatLab
Make sure you have `docker` and `docker-compose` installed.

## Quick start
`$ docker-compose up -d matlab`

## Automation
- Clone this repository 
- Run `install.sh` from the cloned folder to set the correct path in `matlab.sh`
- Run `./matlab.sh`

## Useful info
Running `matlab.sh` will create a docker container with matlab if it doesn't exist yet, and will open a browser window to access it.

This is also the file you want to alias to `matlab` in your terminal (add `alias matlab="/your/clone/location/./matlab.sh"` to your `~/.zshrc`or `~/.bashrc`)

## install_rofi.sh: for rofi users
This script is only useful if you use an application launcher like rofi which looks in `~/.local/share/applications` for a .desktop file.
Running `install_fori.sh` will create a matlab.desktop file in `~/.local/share/applications/` so it shows up in your application launcher.
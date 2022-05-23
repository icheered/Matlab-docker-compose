# Docker-compose for MatLab
Make sure you have `docker` and `docker-compose` installed.

## Quick start
`$ docker-compose up -d matlab`
Matlab is now accesible on `http://localhost:8888/index.html`

## Automation
- Clone this repository 
- Run `install.sh` from the cloned folder to set the correct path in `matlab.sh`
- Run `./matlab.sh`

## Useful info
Running `matlab.sh` will create a docker container with matlab if it doesn't exist yet, and will open a browser window to access it.

This is also the file you want to alias to `matlab` in your terminal (add `alias matlab="/your/clone/location/./matlab.sh"` to your `~/.zshrc`or `~/.bashrc`)

## Installing add-ons (IMPORTANT)
### First time
You can't install add-ons through the browser so installing addons is still kinda annoying if you're doing it for the first time:
- in `docker-compose.yml` change `command: '-browser'` to `command: '-vnc'`
- run `docker-compose up matlab`
- connect to VNC using browser at `localhost:6080`
- open terminal, run `sudo matlab`, enter your login info
- install the add-on you want
- copy the installed add-on content outside the container using `sudo docker cp matlab:/opt/matlab/R2022a/toolbox MATLABTOOLBOX`
- add `- ./MATLABTOOLBOX/toolbox:/opt/matlab/R2022a/toolbox` under `volumes` in `docker-compose .yml`
- stop the container, change `command: '-vnc'` back to `command: '-browser'` in `docker-compose.yml`, restart the container using `docker-compose up -d matlab`

### Not first time
Since addon install directory is already mounted as a volume, next time you only need to - change `command: '-browser'` to `command: '-vnc'` in `docker-compose.yml` 
- start the container and go to `localhost:6080`
- open terminal, run `sudo matlab`, fill out information, install package you want, quit
- change the `docker-compose.yml` back


## install_rofi.sh: for rofi users
This script is only useful if you use an application launcher like rofi which looks in `~/.local/share/applications` for a .desktop file.
Running `install_fori.sh` will create a matlab.desktop file in `~/.local/share/applications/` so it shows up in your application launcher.
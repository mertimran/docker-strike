# Docker-Strike

<p align="center">
    <img alt="Icon" src=".github/icon-sm.png">
</p>
<p align="center">
    <img alt="Image Base" src="https://img.shields.io/badge/base_image-Debian%2012%20(Bookworm)-blue">
    <a href="LICENSE">
        <img alt="License" src="https://img.shields.io/badge/license-Drink%20License-red">
    </a>
</p>

Docker-Strike is a dockerized Half-Life Dedicated Server and can host any Half-Life Mod.

This project was initially written to host Counter-Strike servers using Docker hence the name "Docker-Strike".

## Installation

### Pre-requisities

You **MUST** have [Git](https://git-scm.com/), [Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/install/) installed.

### Cloning

Clone the repository using `git`:

```bash
git clone https://github.com/mertimran/docker-strike
```

### Building and Running

Copy the example environment file and edit if needed:

```bash
cp .env.example .env
```

Build the images:

```bash
docker-compose build
```

Start the container (`-d` is for daemonization):

```bash
docker-compose up -d
```

### Environment Variables

`GAME` can be one of the following:

Note: Some gamemodes require you to have the game itself in your Steam library (e.g. Blue Shift).

| Name                           | Code     |
| ------------------------------ | -------- |
| Half-Life Deathmatch           | valve    |
| Counter-Strike                 | cstrike  |
| Counter-Strike: Condition Zero | czero    |
| Deathmatch Classic             | dmc      |
| Day of Defeat                  | dod      |
| Team Fortress Classic          | tfc      |
| Ricochet                       | ricochet |
| Half-Life: Blue Shift          | bshift   |
| Half-Life: Opposing Force      | gearbox  |
| Earth's Special Forces         | esf      |
| Natural Selection              | ns       |

```
GAME=cstrike
```

Hostname:

```
SERVER_NAME=Docker-Strike
```

IP address of the server (0.0.0.0 to allow connections from anywhere):

```
IP_ADDRESS=0.0.0.0
```

Port of the server, container automatically will allows connections from and to this port:

```
PORT=27015
```

Maximum player count:

```
MAX_PLAYERS=24
```

Map to load when starting the server:

```
MAP=de_dust2
```

Config file in case it is not named `server.cfg`:

```
CONFIG_FILE=server.cfg
```

Also, if you want to supply the environment variable directly to the container, you may do it like this:

```bash
docker run -d -p 27020:27015/udp -e GAME=cstrike -e GAME_APPID=90 -e IP_ADDRESS=0.0.0.0 -e PORT=27015 -e MAX_PLAYERS=24 -e MAP=de_dust2 -e SERVER_NAME="Docker-Strike" -e CONFIG_FILE=server.cfg docker-strike/hlds
```

But it will get messy really quickly, so it's better to use `docker-compose.yaml`.

## Configuration

To be versatile and to allow users to configure their Half-Life mods such as Counter-Strike installations as they like , this project copies the whole game directory (e.g. `cstrike/`) and allows editing of environment variables via `.env` file.

This means if you have an already existing Counter-Strike server installation, you can dockerize it by copying your existing `cstrike/` directory to `data/` directory. Easy right?

## Contributions

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Author

Written by [@mertimran](https://github.com/mertimran)

## License

[Drink License](LICENSE)

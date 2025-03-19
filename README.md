# Docker-Strike

![Icon](.github/icon-sm.png)

Docker-Strike is a dockerized Counter-Strike Dedicated Server running on the latest Debian GNU/Linux Stable Release image.

## Installation

### Pre-requisities

You **MUST** have Git, Docker, Docker Compose installed beforehand.

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

Changing the environment variables from the `.env` file is recommended but if you want to supply the environment variable directly to the container, you may do it like this:

```bash
docker run -d -p 27020:27015/udp -e IP_ADDRESS=0.0.0.0 -e PORT=27015 -e MAX_PLAYERS=24 -e MAP=de_dust2 -e SERVER_NAME="Docker-Strike" -e CONFIG_FILE=server.cfg dockerstrike/counter-strike
```

## Configuration

To be versatile and to allow users to configure their Counter-Strike installation as they like , this project copies the whole `cstrike/` directory and allows editing of environment variables via `.env` file.

This means if you have an already existing Counter-Strike server installation, you can dockerize it by copying your existing `cstrike/` directory to `data/` directory. Easy right?

More information about the configuration will be written inside the `docs/` directory.

## Contributions

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[Drink License](LICENSE)

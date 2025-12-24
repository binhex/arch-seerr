# Application

[Seerr](https://github.com/seerr-team/seerr)

## Description

Seerr is a free and open source software application for managing requests
for your media library. It integrates with the media server of your choice:
Jellyfin, Plex, and Emby. In addition, it integrates with your existing
services, such as Sonarr, Radarr.

## Build notes

Latest development build of Seerr from Arch Linux AUR.

## Usage

```bash
docker run -d \
    -p 5055:5055 \
    --name=<container name> \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e HEALTHCHECK_COMMAND=<command> \
    -e HEALTHCHECK_ACTION=<action> \
    -e HEALTHCHECK_HOSTNAME=<hostname> \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    binhex/arch-seerr
```

Please replace all user variables in the above command defined by <> with the
correct values.

## Access application

`http://<host ip>:5055`

## Example

```bash
docker run -d \
    -p 5055:5055 \
    --name=seerr \
    -v /apps/docker/seerr:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-seerr
```

## Notes

User ID (PUID) and Group ID (PGID) can be found by issuing the following command
for the user you want to run the container as:-

```bash
id <username>
```

___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](https://forums.unraid.net/topic/122509-support-binhex-seerr/#comment-1117451)

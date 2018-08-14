![](https://images.microbadger.com/badges/version/gists/rsync.svg) ![](https://images.microbadger.com/badges/image/gists/rsync.svg) ![](https://img.shields.io/docker/stars/gists/rsync.svg) ![](https://img.shields.io/docker/pulls/gists/rsync.svg)

#### Volume:

- /mnt

#### Custom usage:

    docker run \
        -d \
        --name rsync \
        -p 873:873 \
        -v /your/path:/mnt \
        -v /your/config:/etc/rsyncd.conf
        gists/rsync

#### Compose example:

    rsync:
      image: gists/rsync
      container_name: rsync
      ports:
        - "873:873"
      volumes:
        - /your/path:/mnt
        - ./rsyncd.conf:/etc/rsyncd.conf
      restart: always

a simple container running Bittorrent Sync

## Usage

    docker run -d \
        --restart=on-failure:3 \
        -p 8888 \
        --name btsync \
        genuinegreg/btsync

all: build

build: btsync/btsync
	docker build -t genuinegreg/btsync .

btsync/btsync.tgz: btsync
	curl http://download.getsyncapp.com/endpoint/btsync/os/linux-x64/track/stable > btsync/btsync.tgz

btsync:
	mkdir btsync

btsync/btsync: btsync/btsync.tgz 
	tar -C btsync/ -xf btsync/btsync.tgz 

clean:
	rm btsync -R
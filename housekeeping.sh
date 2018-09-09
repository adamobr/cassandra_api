sudo rm -fR /data/

sudo mkdir /data

sudo rm -fR /var/lib/cassandra/hints/*
sudo rm -fR /var/lib/cassandra/saved_caches/*
sudo rm -fR /var/lib/cassandra/commitlog/*


sudo yum install xfsprogs.x86_64 -y

sudo mkfs.xfs %mount_path

sudo mount %mount_path /data

sudo mkdir -p /data/lib/cassandra/hints/
sudo mkdir -p /data/lib/cassandra/saved_cache/
sudo mkdir -p /data/lib/cassandra/commitlog/

sudo chown -R cassandra.cassandra /data

echo "%mount_path       /data   xfs    defaults,nofail" | sudo tee --append /etc/fstab

sudo mount -a

#! /bin/sh
#
# nfsd.sh

echo "$NFS_DIR $NFS_DOMAIN($NFS_OPTION)" > /etc/exports
/usr/sbin/exportfs -r
/sbin/rpcbind -s
/usr/sbin/rpc.nfsd --no-udp  8 |:
/usr/sbin/rpc.mountd --no-udp  -F

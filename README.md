About
=====

db-backup handles database backups. When executed, it performs a full
database snapshot backup, timestamps it, and ships it off to an off-site
FTP server.

It also manages how many backup snapshots would you like to keep by
deleting the oldest backups on the FTP server.

It keeps logging information in `/var/log/db-backup` and on `/dev/stdout`
for each execution.

Usage
=====
Configure it by specifying the following BASH variables in the file
located at `/etc/db-backup`:

### `BACKUP_COMMAND`
This should take a full snapshot backup of the database and write it
to STDOUT. db-backup will handle compressing that snapshot data
inernally, so the command should not perform any extra compression
on the snapshot data.

### `FTP_HOST`
The CIDR address of the FTP server

### `FTP_USER`
The username for accessing the FTP server

### `FTP_PASSPHRASE`
The passphrase for accessing the FTP server

### `FTP_PATH_PREFIX`
The path prefix on the FTP server in which to store the database backups

### `KEEP_NEWEST`
The number of newest backup snapshots to keep on the FTP host

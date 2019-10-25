# restic-lab

## Installation

```
vagrant up
make install
```

## Backup

```
make ssh-client
restic -r rest:http://restic.eccenca.local backup /var/log
```

## Restore

```
$ make ssh-client
$ restic -r rest:http://restic.eccenca.local snapshots

enter password for repository:
repository 1cdb45a4 opened successfully, password is correct
ID        Time                 Host        Tags        Paths
---------------------------------------------------------------
d46ae105  2019-10-25 05:06:27  client                  /var/log
817088dc  2019-10-25 05:10:29  client                  /var/log
ad84782e  2019-10-25 05:10:43  client                  /var/log
2ed921d7  2019-10-25 05:10:49  client                  /var/log
090e9b51  2019-10-25 05:10:55  client                  /var/log
61b806f2  2019-10-25 05:11:28  client                  /var/log
---------------------------------------------------------------
6 snapshots

$ restic -r rest:http://restic.eccenca.local restore d46 --target ./

enter password for repository:
repository 1cdb45a4 opened successfully, password is correct
restoring <Snapshot d46ae105 of [/var/log] at 2019-10-25 05:06:27.850633357 -0700 PDT by vagrant@client> to ./
```
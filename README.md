# Docker volume backups

## usage

first list your docker volume and get volumn name

```bash
sudo docker volume ls
```

### backup

```bash
#sudo backup-volume.sh <volume_name>
./backup_docker_volume.sh docker_named_volume
```

```bash
#sudo backup-all-volumes.sh
./backup_docker_volume.sh docker_named_volume
```

### restore

```bash
#sudo restore_docker_volume.sh <volumn_name> <tar_file>
./restore-volume.sh docker_named_volume.tar
```
# docker-volume-backup

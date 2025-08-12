#!/bin/bash
<< help1
This is a shell script to take backups of misc data from server. 
can also be used with cron.
Make sure to test it first in test environment before using it on production.
help1

source_dir="/home/ubuntu/devops-zero-to-hero/scripts"
destination_dir="/home/ubuntu/devops-zero-to-hero/backups"

function create_backup {
	timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

	backup_dir="${destination_dir}/backup_${timestamp}"

	zip -r "${backup_dir}.zip" "$source_dir"

	echo "Backup completed"
}

create_backup $source_dir $destination_dir


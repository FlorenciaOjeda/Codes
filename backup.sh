#!/bin/bash

backup_dir=$(date +'%d_%m_%Y')
# Cambia USUARIO por tu usuario, y modifica cualquier path que no este bien
rsync -av /home/USUARIO/Escritorio/Seguridad/ "/var/tmp/Backups/${backup_dir}"
# Pone los datos de tu base de datos
mysqldump --user=TU_USUARIO --password=TU_PASSWORD NOMBRE_DE_LA_BASE > "/var/tmp/Backups/${backup_dir}/copia_seguridad.sql

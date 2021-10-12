#!/bin/bash

#. /home/florencia/Downloads/.bashrc

backup_dir=$(date +'%d-%m-%Y')
# Cambia USUARIO por tu usuario, y modifica cualquier path que no este bien
rsync -av /home/florencia/Desktop/Seguridad/ "/var/tmp/Backups/${backup_dir}"

# Pone los datos de tu base de datos
#mysqldump --user=TU_USUARIO --password=TU_PASSWORD NOMBRE_DE_LA_BASE > "/var/tmp/Backups/${backup_dir}/copia_seguridad.sql

#!/bin/bash

md5hash='e5ed313192776744b9b93b1320b5e268'
images_dir='/home/dario/flor/lab2/imagenes'
for i in {1..46}
do
	# Me fijo si existe el archivo
	if test -f ${images_dir}/imagen${i}.jpg
	then
		# Guardo el hash MD5 de la imagen en la variable "hash"
		hash=$(cat ${images_dir}/imagen${i}.jpg | md5sum | awk '{ print $1 }')
		if [ "$hash" == "$md5hash" ]
		then
			echo imagen${i}.jpg
		fi
	fi
done

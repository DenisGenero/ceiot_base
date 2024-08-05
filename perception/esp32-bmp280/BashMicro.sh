#!/bin/bash

echo "Actualizar el archivo config.h. Para continuar presionar enter..."
read

. ~/esp/esp-idf/export.sh

cd ~/ceiot_base/perception/esp32-bmp280

idf.py set-target esp32

../set-wifi.sh

echo "Ejecutando el build..."

idf.py build

echo "Build finalizado. Pulse enter para flash"
read

idf.py flash

echo "Flash terminado. Pulse enter para monitor"

read

idf.py monitor

exit

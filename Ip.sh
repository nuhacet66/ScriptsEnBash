#!/bin/bash

# Utiliza el servicio ifconfig.me para obtener la IP pública
mi_ip=$(curl -s ifconfig.me)

# Verifica si se obtuvo la IP correctamente
if [ -n "$mi_ip" ]; then
    echo "Tu dirección IP pública es: $mi_ip"
else
    echo "No se pudo obtener la dirección IP pública."
fi

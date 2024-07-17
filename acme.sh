#!/bin/bash

# Asegúrate de que el script se ejecute con privilegios de superusuario
if [ "$EUID" -ne 0 ]; then 
  echo "Por favor, ejecute este script como root."
  exit 1
fi

# Comando para instalar el servicio de Cloudflare Tunnel
sudo cloudflared service install eyJhIjoiYmNjN2ViZmFjYTVkODg4Mzc5NjgxNWM5YTI1NWM1MDIiLCJ0IjoiODg3ZWY4MWMtZGQ0MS00OGJhLTk3NjgtYjAwMDA2NDU0NDBjIiwicyI6Ik5EZzRPVGc0TkRJdFpEWTVZeTAwTkdNNExXRmxNalF0WVRRelpUZG1OemRoTTJGbSJ9

# Verificar si el comando se ejecutó correctamente
if [ $? -eq 0 ]; then
  echo "El servicio de Cloudflare Tunnel se ha instalado correctamente."
else
  echo "Hubo un error al instalar el servicio de Cloudflare Tunnel."
  exit 1
fi

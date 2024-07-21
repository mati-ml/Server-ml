#!/bin/bash

# Asegúrate de que el script se ejecute con privilegios de superusuario
if [ "$EUID" -ne 0 ]; then 
  echo "Por favor, ejecute este script como root."
  exit 1
fi

sudo cloudflared service install eyJhIjoiYmNjN2ViZmFjYTVkODg4Mzc5NjgxNWM5YTI1NWM1MDIiLCJ0IjoiMDY0NTBlM2MtOGU1ZS00NTMwLTllNDEtMmUzOWE2NzhhODE0IiwicyI6Ik0yRXdaVGd3T0RJdE5HUXpOaTAwT0dVM0xUZzFaVGd0TVRJeU5UY3pOMkkyWm1ZNCJ9

# Verificar si el comando se ejecutó correctamente
if [ $? -eq 0 ]; then
  echo "El servicio de Cloudflare Tunnel se ha instalado correctamente."
else
  echo "Hubo un error al instalar el servicio de Cloudflare Tunnel."
  exit 1
fi

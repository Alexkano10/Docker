#!/bin/bash

# Verificar si se pasó un argumento
if [ -z "$1" ]; then
  echo "No URL provided."
  exit 1
fi

echo "Searching.."
sleep 1
curl http://$1

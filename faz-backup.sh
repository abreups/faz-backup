#!/bin/bash
#
# faz-backup.sh - faz backup dos diretórios dos containeres
#
# Versões:
#
# 1.0 2022-03-20
#     Versão inicial usando o comando tar.
#     O script assume que você o está chamando a partir do diretório me/<usuario>/projetos_docker
#
#
# parâmetros do tar:
#   -c = create a new archive
#   -z = compacta o arquivo usando gzip
#   -v = Verbosely list files processe
#   -f = determina o nome do arquivo a ser usado para o backup
#   -C = Change to <DIR> before performing any operations

# faz backup do diretório do Home Assistant
sudo tar -czvf home-assistant-2022.6.tar.gz -C home-assistant-2022.6 .

# faz backup do diretório do Node RED
sudo tar -czvf node-red-2.2.0-16.tar.gz -C node-red-2.2.0-16 .

# faz backup do diretorio do zigbee2mqtt
sudo tar -czvf zigbee2mqtt-1.25.2.tar.gz -C zigbee2mqtt-1.25.2 .

# faz backup do diretorio do mosquitto
sudo tar -czvf mosquitto-2.0.14.tar.gz -C mosquitto-2.0.14 .


# faz backup do diretório do ESP Home
# Faz backup apenas dos arquivos yaml, senão o backup engloba toda a ferramenta da Espressif!
#sudo tar -czvf esphome2022.1.3.tar.gz esphome2022.1.3/*.yaml 


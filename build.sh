#!/bin/sh -e

docker build -t wdowny/ohatest .
docker push wdowny/ohatest
ansible-playbook -i hosts ansible-playbook.yaml
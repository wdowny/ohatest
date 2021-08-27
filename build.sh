#!/bin/sh -e

docker build -t wdowny/ohatest .
docker push wdowny/ohatest
ansible-playbook ansible-playbook.yaml
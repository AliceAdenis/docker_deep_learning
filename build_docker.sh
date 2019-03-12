#!/bin/bash
sudo docker-compose -p dock_alice build
## change docker-compose.yml replace all 'alice' by your name
## Jupyter notebook will ask you a password : PASSWD 
## to create your password follow the instruction in the above link
## http://jupyter-notebook.readthedocs.io/en/latest/public_server.html
## and overwrite the docker-compose.yml's PASSWD 

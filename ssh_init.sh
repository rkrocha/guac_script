#!/bin/bash

chmod 600 ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa.pub

eval $(ssh-agent -s)

ssh-add ~/.ssh/id_rsa

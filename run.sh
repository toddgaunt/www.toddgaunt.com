#!/bin/sh

ls /etc/letsencrypt/live/toddgaunt.com/* | entr -r ./bastion www.toddgaunt.com

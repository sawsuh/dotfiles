#!/bin/bash
cd /home/prash/Downloads
find -maxdepth 1 -mtime +7 | xargs rm -rf


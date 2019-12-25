#!/bin/bash
cd /home/prashant/Downloads
find -maxdepth 1 -mtime +7 | xargs rm -rf


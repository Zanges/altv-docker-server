#!/bin/bash -x

/opt/altv/update.sh

ln -sf /opt/altv /altv-persistent

exec /opt/altv/altv-server --logfolder  "logs/"
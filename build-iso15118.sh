#!/bin/bash

source /root/config.sh

echo **************************
echo *   BUILDING ISO15118    *
echo **************************

cd "$EVEREST_DEV/Josev"
python3 -m pip install -r requirements.txt
cd "$EVEREST_DEV/Josev/iso15118/shared/pki"
./create_certs.sh -v iso-2 -i "$EVEREST_DEV/everest-core"

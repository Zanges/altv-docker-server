#!/bin/bash -x

chmod -R a+rwX /opt/altv/

wget --no-cache -nv -O /opt/altv/altv-server https://cdn.altv.mp/server/release/x64_linux/altv-server
wget --no-cache -nv -O /opt/altv/server.cfg https://cdn.altv.mp//others/server.cfg
chmod +x /opt/altv/altv-server

wget --no-cache -nv -O /opt/altv/data/vehmodels.bin https://cdn.altv.mp/server/release/x64_linux/data/vehmodels.bin
wget --no-cache -nv -O /opt/altv/data/vehmods.bin https://cdn.altv.mp/server/release/x64_linux/data/vehmods.bin

wget --no-cache -nv -O /opt/altv/modules/js-module/libnode.so.72 https://cdn.altv.mp/js-module/release/x64_linux/modules/js-module/libnode.so.72
wget --no-cache -nv -O /opt/altv/modules/js-module/libjs-module.so https://cdn.altv.mp/js-module/release/x64_linux/modules/js-module/libjs-module.so

wget --no-cache -nv -O /opt/altv/modules/libcsharp-module.so https://cdn.altv.mp/coreclr-module/release/x64_linux/modules/libcsharp-module.so
wget --no-cache -nv -O /opt/altv/AltV.Net.Host.dll https://cdn.altv.mp/coreclr-module/release/x64_linux/AltV.Net.Host.dll
wget --no-cache -nv -O /opt/altv/AltV.Net.Host.runtimeconfig.json https://cdn.altv.mp/coreclr-module/release/x64_linux/AltV.Net.Host.runtimeconfig.json

chmod -R a+rwX /opt/altv/
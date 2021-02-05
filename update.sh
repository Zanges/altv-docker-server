#!/bin/bash -x

wget --no-cache -qxN -P /opt/altv/ https://cdn.altv.mp/server/release/x64_linux/altv-server
wget --no-cache -qxN -P /opt/altv/ https://cdn.altv.mp//others/server.cfg
chmod +x /opt/altv/altv-server

wget --no-cache -qxN -P /opt/altv/data/ https://cdn.altv.mp/server/release/x64_linux/data/vehmodels.bin
wget --no-cache -qxN -P /opt/altv/data/ https://cdn.altv.mp/server/release/x64_linux/data/vehmods.bin

wget --no-cache -qxN -P /opt/altv/modules/js-module/ https://cdn.altv.mp/js-module/release/x64_linux/modules/js-module/libnode.so.72
wget --no-cache -qxN -P /opt/altv/modules/js-module/ https://cdn.altv.mp/js-module/release/x64_linux/modules/js-module/libjs-module.so

wget --no-cache -qxN -P /opt/altv/modules/ https://cdn.altv.mp/coreclr-module/release/x64_linux/modules/libcsharp-module.so
wget --no-cache -qxN -P /opt/altv/ https://cdn.altv.mp/coreclr-module/release/x64_linux/AltV.Net.Host.dll
wget --no-cache -qxN -P /opt/altv/ https://cdn.altv.mp/coreclr-module/release/x64_linux/AltV.Net.Host.runtimeconfig.json

chmod -R a+rwX /opt/altv/
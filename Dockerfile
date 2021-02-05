FROM node:buster-slim

ENV PORT 7788

# INSTALL REQUIREMENTS
RUN apt-get update && \
    apt-get install -y wget libatomic1 libc-bin jq gnupg curl && \
    wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm -f packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get -y install apt-transport-https dotnet-runtime-3.1 dotnet-runtime-5.0
# CREATE SERVER FOLDER
RUN mkdir /opt/altv
WORKDIR /opt/altv
# INSTALL ALTV PKG
RUN bash -c 'npm install -g altv-pkg' # https://github.com/Stuyk/altv-pkg
# DOWNLOAD SCRIPTS
RUN wget -P /opt/altv https://raw.githubusercontent.com/Zanges/altv-docker-server/main/update.sh && chmod +x /opt/altv/update.sh
RUN wget -P /opt/altv https://raw.githubusercontent.com/Zanges/altv-docker-server/main/entrypoint.sh && chmod +x /opt/altv/entrypoint.sh

VOLUME /altv-persistent

ENTRYPOINT [ "/opt/altv/entrypoint.sh" ]
CMD [ "bash" ]
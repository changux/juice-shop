# OWASP Juice Shop - An intentionally insecure Javascript Web Application
FROM            node:6
MAINTAINER      Bjoern Kimminich <bjoern.kimminich@owasp.org>
LABEL version = "3.2.0"

COPY juice-shop /juice-shop
WORKDIR /juice-shop

RUN npm install --production --unsafe-perm
RUN apt-get update
RUN apt-get install -y curl apt-transport-https lsb-release
RUN curl -s https://packages.wazuh.com/key/GPG-KEY-WAZUH | apt-key add -
ADD config/repo.sh /repo.sh
RUN chmod +x /repo.sh
RUN /repo.sh
RUN apt-get update
RUN apt-get install -y wazuh-agent
ADD config/ossec.conf /var/ossec/etc/ossec.conf
ADD config/authd.sh /authd.sh
EXPOSE  3000 
CMD ["npm", "start"]

CODENAME=$(lsb_release -cs)
echo "deb https://packages.wazuh.com/apt $CODENAME main" \
| tee /etc/apt/sources.list.d/wazuh.list

sleep 40
echo "add to manager"
/var/ossec/bin/agent-auth -m wazuh
echo "restart ossec"
/var/ossec/bin/ossec-control restart
echo "tail"
cd /juice-shop
npm start
tail -f /var/ossec/logs/ossec.log

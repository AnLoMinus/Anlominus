# !/usr/bin/bash
# Monitoring Script

# [1] 
echo "Enter the IP address of the Application Server"
read application_server_ip
# [2] 
echo "Enter email address to send Monit alerts to"
read monit_alert_email
# [3]
echo "Enter the SMTP host for Monit"
read monit_smtp_host
# [4]
echo "Enter the SMTP port for Monit"
read monit_smtp_port
# [5]
echo "Enter the SMTP username for Monit"
read monit_smtp_username
# [6]
echo "Enter the SMTP password for Monit"
read monit_smtp_password

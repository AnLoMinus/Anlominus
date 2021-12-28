#!/usr/bin/bash
# Monitoring Script

echo "Enter the IP address of the Application Server"
read application_server_ip
echo "Enter email address to send Monit alerts to"
read monit_alert_email
echo "Enter the SMTP host for Monit"
read monit_smtp_host
echo "Enter the SMTP port for Monit"
read monit_smtp_port
echo "Enter the SMTP username for Monit"
read monit_smtp_username
echo "Enter the SMTP password for Monit"
read monit_smtp_password

#!/bin/sh

# Enable the service
sysrc -f /etc/rc.conf postgresql_enable="YES"

# Initialize database
service postgresql initdb 2>/dev/null

# Start the service
service postgresql start 2>/dev/null

echo "Log in to PostgreSQL jail and set up." > /root/PLUGIN_INFO


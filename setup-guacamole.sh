#!/bin/bash

# This script should be saved as setup-guacamole.sh
# Run this before starting the containers to create the initdb.sql file

echo "Creating Guacamole database initialization file..."

# Create the initdb.sql by extracting from the Guacamole container
docker run --rm guacamole/guacamole:1.5.3 /opt/guacamole/bin/initdb.sh --postgresql > initdb.sql

echo "initdb.sql created successfully!"
echo ""
echo "Before running docker-compose up:"
echo "1. Update the email in docker-compose.yml (line with 'your-email@example.com')"
echo "2. Update the domain names (replace 'yourdomain.com' with your actual domain)"
echo "3. Change the VNC_PASSWORD in the ubuntu-lxde service"
echo "4. Change the PostgreSQL password"
echo ""
echo "To set up Guacamole connection after containers are running:"
echo "1. Access Guacamole at https://guacamole.yourdomain.com"
echo "2. Login with guacadmin/guacadmin (default credentials)"
echo "3. Create a new VNC connection with these settings:"
echo "   - Protocol: VNC"
echo "   - Hostname: ubuntu-lxde"
echo "   - Port: 5901"
echo "   - Password: (the VNC_PASSWORD you set)"
echo "   - Color depth: True color (24-bit)"
echo ""

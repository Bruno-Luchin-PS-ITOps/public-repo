wget https://bitbucket.org/psitops/jcpoc/downloads/cortex-8.7.0.131661.deb
#!/bin/bash

# Display CPU architecture information
lscpu

# Display memory usage
free -h

# Display disk usage
df -h

# Display kernel version
uname -r

# Check if ca-certificates package is installed
dpkg -s ca-certificates

# Display OpenSSL version
openssl version

# Install policycoreutils package
sudo apt-get install -y policycoreutils

# Install selinux-policy-dev package
sudo apt-get install -y selinux-policy-dev

# Display version of ldd
ldd --version

# Display Linux distribution information
lsb_release -a

# Check UFW status
sudo ufw status

# Enable UFW
sudo ufw enable

# Allow traffic on port 443/tcp
sudo ufw allow 443/tcp

# Install OpenSSH server
sudo apt-get install -y openssh-server
# Enable SSH service to start on boot
sudo systemctl enable ssh

# Start SSH service
sudo systemctl start ssh

# Download Cortex Package and Config File
wget --no-check-certificate https://bitbucket.org/psitops/jcpoc/downloads/cortex-8.7.0.131661.deb
wget --no-check-certificate https://bitbucket.org/psitops/jcpoc/downloads/cortex.conf

# Create directory for Cortex configuration
sudo mkdir /etc/panw

# Copy Cortex configuration file
sudo cp cortex.conf /etc/panw/cortex.conf

# Install Cortex package
sudo dpkg -i cortex-8*

echo "Commands executed successfully!"

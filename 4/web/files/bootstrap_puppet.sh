#!/bin/bash
curl https://apt.puppetlabs.com/puppet-release-xenial.deb -o puppet-release-xenial.deb
sleep 15
sudo dpkg -i puppet-release-xenial.deb
sudo apt-get -qq update
sudo apt-get install -yq puppet-agent
sudo /opt/puppetlabs/bin/puppet module install puppet-nginx
sudo /opt/puppetlabs/bin/puppet module install puppetlabs-apt
sudo mkdir -p /var/www/html
cat >/tmp/nginx.pp << "EOF"
class{'nginx': }
EOF
sudo /opt/puppetlabs/bin/puppet apply /tmp/nginx.pp

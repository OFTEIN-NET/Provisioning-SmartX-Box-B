#
# Cookbook Name:: smartx-b-box
# Recipe:: box-install
#
# Copyright 2013, GIST
#
# All rights reserved - Do Not Redistribute
#

# Remote Access and Editor
package 'vim'
package 'ssh'

# Network Configuration Packages
package 'ethtool'
package 'ifstat'
package 'bridge-utils'

package 'network-manager' do
 action :remove
end

# XEN and Virtualization API
package 'libxen-4.1' 
package 'libxen-dev' 
package 'libxenstore3.0' 
package 'xen-hypervisor-4.1-amd64' 
package 'xen-tools xen-utils-4.1' 
package 'xen-utils-common' 
package 'xenstore-utils' 
package 'libvirt-bin' 
package 'libvirt-dev' 
package 'libvirt0'

# Python Packages
package 'python-libvirt'
package 'python-openssl' 
package 'python-lxml' 
package 'python-libxml2' 
package 'python-jinja2' 
package 'python-libxslt1' 
package 'python-setuptools' 
package 'python-pyparsing' 
package 'build-essential'

# Development
package 'build-essential'
package 'autoconf'
package 'libtool'
package 'openssl'
package 'libssl-dev'

# Install Python generateDS

easy_install_package "generateDS" do
  action :install
end

# Install Open vSwitch

bash "Downloading OpenvSwitch...." do
  code <<-EOH
  cd /opt
  wget -c http://openvswitch.org/releases/openvswitch-1.7.3.tar.gz
  EOH
end

bash "Extracting and Installing Open vSwitch..." do
  code <<-EOH
  cd /opt
  tar -zxvf openvswitch-1.7.3.tar.gz
  cd openvswitch-1.7.3
  ./boot.sh 
  ./configure --with-linux=/lib/modules/`uname -r`/build
  make 
  make install
  EOH
end
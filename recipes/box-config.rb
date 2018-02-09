#
# Cookbook Name:: smartx-b-box
# Recipe:: box-config
#
# Copyright 2013, GIST
#
# All rights reserved - Do Not Redistribute
#

template '/etc/network/interfaces' do
  source    'interfaces.erb'
  notifies  :restart, 'service[networking]'
end

service 'networking' do
  action [:enable, :start]
end

template '/etc/hosts' do
  source    'hosts.erb'
end

template '/etc/resolv.conf' do
  source    'resolv.conf.erb'
end

template '/etc/apt/source.list' do
  source    'source.list.erb'
end

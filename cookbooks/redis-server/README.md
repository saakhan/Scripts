redis-server Cookbook
A Cookbook for managing the installation of Redis, the Open Source Key Value Store (http://redis.io/).

Requirements

Ubuntu 12.04 or Higher. Requires the apt cookbook for adding PPA's.



Simply include the recipe in cookbook

#
# Cookbook Name:: redis-server
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
apt_repository 'redis-server' do
  uri          node['redis-server']['ppa']
  distribution node['lsb']['codename']
end

package node['redis-server']['package']

template "/etc/redis/redis.conf" do
  owner "redis"
  group "redis"
  mode "0644"
  source "redis.conf.erb"
  notifies :run, "execute[restart-redis]", :immediately
end

directory "/etc/redis" do
  owner 'redis'
  group 'redis'
  action :create
end

execute "restart-redis" do
  command "/etc/init.d/redis-server restart"
  action :nothing
end
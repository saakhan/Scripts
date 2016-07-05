#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"

package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable, :start ]
end

cookbook_file "/usr/share/nginx/www/index.html" do
  source "index.html"
  mode "0644"
end

# open port 80
bash "allowing nginx traffic through firewall" do
user "root"
  code "ufw allow 80 && ufw allow 443"
end

execute "restart-nginx" do
  command "/etc/init.d/nginx restart"
  action :nothing
end

#
# Cookbook Name:: postgres-server
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "postgresql::server"
include_recipe "database::postgresql"
 
conn_info = {
:host => "localhost",
:username => "postgres",
:password => node['postgresql']['password']['postgres']
}
 
postgresql_database_user "example_user" do
connection conn_info
password "example_password"
action :create
end
 
postgresql_database "example_db" do
connection conn_info
action :create
end
 
postgresql_database_user "example_user" do
connection conn_info
database_name "example_db"
privileges [:all]
action :grant
end

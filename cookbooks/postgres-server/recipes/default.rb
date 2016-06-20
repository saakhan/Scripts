#
# Cookbook Name:: postgres-server
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
{
   "name": "postgres-server",
   "description": "Postgres database server",
   "default_attributes": {

   },
   "json_class": "Chef::Role",
   "run_list": [
      "postgresql::server",
      "monit_configs-tlq::postgres"
   ],
   "chef_type": "role"
}

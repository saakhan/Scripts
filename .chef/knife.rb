current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "admin"
client_key               "#{current_dir}/admin.pem"
validation_client_name   "cap-validator"
validation_key           "#{current_dir}/cap-validator.pem"
chef_server_url          "https://ip-172-31-9-18.us-west-1.compute.internal/organizations/cap"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]

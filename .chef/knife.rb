log_level                :info
log_location             STDOUT
node_name                'adminWS'
client_key               '/Users/albertomunoz/chef-repo/.chef/adminWS.pem'
validation_client_name   'chef-validator'
validation_key           '/Users/albertomunoz/chef-repo/.chef/validation.pem'
chef_server_url          'http://ec2-79-125-124-59.eu-west-1.compute.amazonaws.com:4000'
cache_type               'BasicFile'
cache_options( :path => '/Users/albertomunoz/chef-repo/.chef/checksums' )
cookbook_path [ '/Users/albertomunoz/chef-repo/cookbooks' ]

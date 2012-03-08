#
# Cookbook Name:: site1
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
new_site "site2" do
        docroot1 "/var/www/site2"
        template1 "site1.conf.erb"
	enable_site1 "yes"
        server_name1 node[:fqdn]
        server_aliases1 [node[:hostname],"site2"]
end

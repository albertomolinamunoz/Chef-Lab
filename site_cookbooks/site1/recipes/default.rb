#
# Cookbook Name:: site1
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
new_site "site1" do
        docroot "/var/www/site1"
        template "site1.conf.erb"
	enable_site node[:site1][:enable_site]
        server_name node[:fqdn]
        server_aliases [node[:hostname],"site1"]
end

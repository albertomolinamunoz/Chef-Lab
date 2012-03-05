#
# Cookbook Name:: sitesLFC
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
web_app "liverpool.tv1" do
	docroot "/var/www/Liverpool.tv1"
	template "liverpool.tv1.conf.erb"
#	enable = node['sitesLFC']['site_enable']
	enable false
	server_name node[:fqdn]
	server_aliases [node[:hostname],"liverpool.tv1__"]
end

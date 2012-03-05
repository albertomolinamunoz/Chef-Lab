#
# Cookbook Name:: sitesLFC
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
web_app "liverpool.tv2" do
	docroot "/var/www/Liverpool.tv2"
	template "liverpool.tv2.conf.erb"
#	enable = node['sitesLFC']['site_enable']
	enable false
	server_name node[:fqdn]
	server_aliases [node[:hostname],"liverpool.tv1__"]
end

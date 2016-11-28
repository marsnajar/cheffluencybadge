#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


if node['platform_family'] == "rhel"
	package = "httpd"
elsif node ['platform_family'] == "debian"
	package = "apache2"
end


#Install apache2 package
package 'apache2' do
	package_name package 
	action :install
end

#Start apache2 and enable apache2 to start on boot
service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end



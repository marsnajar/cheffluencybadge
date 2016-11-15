#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


#Install apache2 package
package 'apache2' do
	package_name 'httpd'
	action :install
end

#Start apache2 and enable apache2 to start on boot
service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end

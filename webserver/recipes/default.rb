#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

service 'httpd' do
  action :restart
end

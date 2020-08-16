#
# Cookbook:: ipaddress
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'httpd' do
  action :install
end

package 'tomcat7' do
  action :install
end

package 'tomcat7-webapps' do
  action :install
end

ip = node['cloud']['public_ipv4']

file '/etc/httpd/conf.d/mycustom.conf' do
  content "ProxyPass /examples  http://#{ip}:8080/examples/
ProxyPassReverse /examples http://#{ip}:8080/examples/"
  mode '0755'
end

service 'httpd' do
  action  :restart
end

service 'tomcat7' do
  action  :restart
end

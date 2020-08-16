#
# Cookbook:: tomcat7
# Recipe:: default
## Copyright:: 2020, The Authors, All Rights Reserved.

package %w(tomcat7 tomcat7-webapps)

service 'tomcat7' do
  action :start
end

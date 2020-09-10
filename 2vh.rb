$pack = ['httpd','elinks']
$templ = ['microsoft','google']
$index=0
while $index < $pack.size do
  package $pack
  $index = $index+1
end
while $index < $templ.size do
  file '/etc/httpd/conf.d/$templ.conf' do
 # source "$templ.erb"
  $index = $index+1
  end
end
file '/etc/hosts' do
  source 'hosts.erb'
end
while $index < $templ.size do
  directory '/var/www/html/$templ' do
  action :create
  $index = $index+1
  end
end
while $index < $templ.size do
  file '/var/www/html/$templ/index.html' do
  content 'Welcome to $templ'
  $index = $index+1
  end
end
service 'httpd' do
  action :restart
end

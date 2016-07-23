#
# Cookbook Name:: .
# Recipe:: config
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# file '/var/www/html/index.html' do
#   owner 'root'
#   group 'root'
#   mode 00755
#   action :create
#   content 'welcome to the new digital'
# end


cookbook_file '/var/www/html/index.html' do
  source 'to_the_new.html'
  owner 'root'
  group 'root'
  mode 00755
  action :create
end

cookbook_file '/etc/nginx/sites-enabled/jetty' do
  source 'jetty'
  owner 'root'
  group 'root'
  mode 00644
  notifies :reload, 'service[nginx]', :delayed
end

link '/etc/nginx/sites-enabled/default' do
  #to '/etc/passwd'
  action :delete
  notifies :reload, 'service[nginx]', :delayed
end

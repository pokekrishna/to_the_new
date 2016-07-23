#
# Cookbook Name:: .
# Recipe:: services
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

service 'nginx' do
  supports :status => true
  action [ :enable, :start ]
end

#
# Cookbook Name:: .
# Recipe:: install
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

log 'run-build-essential' do
  message "This is a message that will be added to the log."
  level :warn
end

include_recipe 'build-essential'

execute 'apt-update' do
  command 'apt-get update'
  action :run
end

# package 'nginx' do
# 	action :install
# end
#
# package 'vim' do
#   action :install
# end
#
# package 'curl' do
#   action :install
# end

%w( nginx vim curl elinks ).each do |pkg|
  package pkg do
    action :install
  end
end

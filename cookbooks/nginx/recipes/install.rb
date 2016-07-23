#
# Cookbook Name:: .
# Recipe:: install
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


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

%w( nginx vim curl ).each do |pkg|
  package pkg do
    action :install
  end
end

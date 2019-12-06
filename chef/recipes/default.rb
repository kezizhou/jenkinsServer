#
# Cookbook:: jenkinsServer
# Recipe:: default
#
# Copyright:: 2019, Keziah Zhou, All Rights Reserved.

include_recipe 'jenkinsServer::install.rb'
include_recipe 'jenkinsServer::plugins.rb'
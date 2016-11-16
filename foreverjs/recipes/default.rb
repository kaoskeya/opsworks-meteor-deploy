#
# Cookbook Name:: foreverjs
# Recipe:: default
#
# Copyright 2015, Alex J Meyers
#
# All rights reserved - Do Not Redistribute
#

bash "install foreverjs" do
	user "root"
	code <<-EOH
    npm install forever -g
  EOH
end

#
# Cookbook Name:: opsworks-meteor-deploy
# Recipe:: default
#
# Copyright 2015, Alex J Meyers
#
# All rights reserved - Do Not Redistribute
#
execute "Change to Meteor Application Directory" do
  command "cd #{node["deploy"]["macrofuel_meteor"]["deploy_to"]}/current"
end

execute "Current Folder" do
  command "cd current"
end

execute "Configure Meteor Dependencies with npm install" do
  command "(cd programs/server && npm install)"
end

execute "Start Meteor as Node Application" do
  command "node main.js"
end

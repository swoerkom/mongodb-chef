#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package "nginx"
package "mongodb"
include_recipe 'apt'
include_recipe 'nodejs'
include_recipe 'build-essential::default'
include_recipe 'sc-mongodb::default'
nodejs_npm 'pm2'
service "nginx" do
  action [:enable, :start]
end

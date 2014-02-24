#
# Cookbook Name:: php55
# Recipe:: default
#

#include_recipe "apt"

apt_repository "ondrej-php5" do
  uri "http://ppa.launchpad.net/ondrej/php5/ubuntu"
  distribution "precise"
  action :add
end
#
# Cookbook Name:: php55
# Recipe:: default
#

include_recipe "apt"

command "add-apt-repository -y ppa:ondrej/php5"
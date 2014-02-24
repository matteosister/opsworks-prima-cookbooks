#
# Cookbook Name:: php55
# Recipe:: default
#
node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'php'
    Chef::Log.debug("Skipping deploy::php application #{application} as it is not an PHP app")
    next
  end

  #include_recipe "apt"

  apt_repository "ondrej-php5" do
    uri "http://ppa.launchpad.net/ondrej/php5/ubuntu"
    distribution "precise"
    action :add
  end
end
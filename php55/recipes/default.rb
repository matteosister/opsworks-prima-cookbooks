node[:deploy].each do |app_name, deploy|
  apt_repository "php55" do
    uri 'http://ppa.launchpad.net/ondrej/php5/ubuntu'
    distribution 'precise'
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key 'E5267A6C'
  end

  %w{php5 php5-curl php5-intl php5-mysql}.each do |pkg|
    apt_package pkg do
      action :upgrade
    end
  end
end
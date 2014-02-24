node[:deploy].each do |app_name, deploy|
  execute "add apt repository" do
    command "add-apt-repository -y ppa:ondrej/php5"
    action :run
  end
end
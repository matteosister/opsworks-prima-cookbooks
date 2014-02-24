execute "add apt repository" do
  command "add-apt-repository -y ppa:ondrej/php5"
  action :run
end
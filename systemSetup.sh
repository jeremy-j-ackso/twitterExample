sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo echo "deb https://cran.r-project.org/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list
sudo apt-get update
# sudo apt-get dist-upgrade -y
sudo apt-get install -y apache2 r-base r-base-dev build-essential pandoc libcurl4-openssl-dev libssl-dev
Rscript /vagrant/rPackageInstall.R

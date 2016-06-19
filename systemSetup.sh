sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo echo "deb https://cran.r-project.org/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list
sudo apt-get update
# sudo apt-get dist-upgrade -y
sudo apt-get install -y apache2 r-base r-base-dev build-essential libcurl4-openssl-dev \
    libssl-dev java-common libxml2 libxml2-dev libxml2-utils default-jdk default-jre
    
wget https://github.com/jgm/pandoc/releases/download/1.17.1/pandoc-1.17.1-2-amd64.deb
wget https://raw.githubusercontent.com/jeremy-j-ackso/twitterExample/master/rPackageInstall.R
wget https://raw.githubusercontent.com/jeremy-j-ackso/twitterExample/master/makeDashboard.R \
    /var/makeDashboardR
wget https://raw.githubusercontent.com/jeremy-j-ackso/twitterExample/master/dashboard.Rmd \
    /var/dashboard.Rmd

dpkg -i pandoc-1.17.1-2-amd64.deb
Rscript rPackageInstall.R

echo "*/5 * * * * /usr/bin/Rscript /var/makeDashboard.R" | crontab -

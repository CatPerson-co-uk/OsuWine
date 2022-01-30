# Install Osu
git clone https://gitlab.com/osu-wine/osu-wine
cd osu-wine
sudo ./install.sh
echo -e "\e[36m
-------------------------------------------------------
Please Exit The Game After The Installer Has Finished
------------------------------------------------------
\e[0m"
sleep 5
osu-wine
# Installing Old Version Owell if Wine
echo -e "\e[36m
--------------------------------
Now Installing Old Wine Version
--------------------------------
\e[36m
"
sleep 1
echo "
Please download this file,
Once the file has been downloaded press "Return".
(do not move the file from Downloads)
"
sleep 1
xdg-open https://drive.google.com/file/d/1xgJIe18ccBx6yjPcmBxDbTnS1XxwrAcc/view
read -sn 1
tar -xf ~/Downloads/wine-osu-7.0-x86_64.pkg.tar.zst
sudo cp -r opt/wine-osu /opt
sudo sed -i -e 's/#PATH/PATH/g' /etc/osu-wine.conf
sudo cp /etc/osu-wine.conf ~/.osu-wine.conf
sudo wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Zu5vK-ACs1KhF4Rju1HAIIPb6XC42s9X' -O /usr/bin/osu-wine
echo -e "\e[36m
--------------------------------
      Installation Finished
--------------------------------
"

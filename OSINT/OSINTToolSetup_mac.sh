
#!/bin/bash

#Tool Install

{

#Install GoLang
echo Installing GoLang!
brew install golang-go &>/dev/null

#Install Subfinder
echo Installing Subfinder!
GO111MODULE=on go get -u -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder &>/dev/null
mkdir ~/Tools &>/dev/null
mkdir ~/Tools/subfinder &>/dev/null
cp ~/go/bin/subfinder ~/Tools/subfinder/ &>/dev/null

#Install assetfinder
echo Installing assetfinder!
go get -u github.com/tomnomnom/assetfinder &>/dev/null
mkdir ~/Tools/assetfinder &>/dev/null
cp ~/go/bin/assetfinder ~/Tools/assetfinder/ &>/dev/null
sudo cp ~/go/bin/assetfinder /usr/local/bin/ &>/dev/null

#Install dnsprobe
echo Installing dnsprobe!
go get -u github.com/projectdiscovery/dnsprobe &>/dev/null
mkdir ~/Tools/dnsprobe &>/dev/null
cp ~/go/bin/dnsprobe ~/Tools/dnsprobe/ &>/dev/null
sudo cp ~/go/bin/dnsprobe /usr/local/bin/ &>/dev/null

#Install Infoga
echo Installing Infoga!
git clone https://github.com/m4ll0k/Infoga.git ~/Tools/Infoga -q &>/dev/null
python ~/Tools/Infoga/setup.py install &>/dev/null

#Install ShodanScraper
#Need to initialize Shodan API Key!
echo Installing ShodanScraper!
git clone https://github.com/ariel-shin/Recon-Scripts/blob/master/shodanScraper.py ~/Tools/shodanScraper &>/dev/null
chmod +x /root/Tools/shodanScraper/shodanScraper.py &>/dev/null
python3 -m easy_install shodan &>/dev/null

#Install CloudEnum
echo Installing CloudEnum!
git clone https://github.com/initstring/cloud_enum.git ~/Tools/cloud_enum -q &>/dev/null
pip3 install -r ~/Tools/cloud_enum/requirements.txt -q &>/dev/null

#Install GitDorker
echo Installing GitDorker
git clone https://github.com/obheda12/GitDorker ~/Tools/GitDorker -q &>/dev/null
pip3 install -r ~/Tools/GitDorker/requirements.txt -q &>/dev/null
rm ~/Tools/GitDorker/*png &>/dev/null
}

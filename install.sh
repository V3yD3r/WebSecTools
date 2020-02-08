#!/bin/bash
##------------------------------------------------####------------------------------------------------##
        this script installs all tools within ~/tools
##------------------------------------------------####------------------------------------------------##

#### #### #### ####
#sudo rm -rf ~/tools/
#### #### #### ####

#sudo apt-get -y update
#sudo apt-get -y upgrade

sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y cewl
sudo apt-get install -y rename
sudo apt-get install -y xargs
sudo apt-get install -y unzip
sudo apt-get install -y awscli
sudo apt-get install -y host
sudo apt-get install -y dig
sudo apt-get install -y nmap
sudo apt-get install -y docker.io
sudo apt-get install -y golang



#create a tools folder in ~/
echo -e "\e[38;5;82mAll tools will be accessible from '~/tools' ..!\e[0m"
sleep 3s

mkdir ~/tools
cd ~/tools/

##------------------------------------------------####------------------------------------------------##
## uncomment this section to download ZAP and Burp.. plus create start scripts in tools folder##
## this script installs all tools within ~/tools

#echo -e "\e[38;5;82mInstalling.. \e[38;5;198mZAP\e[0m"
#mkdir ~/tools/zaproxy
## Download zap---------------------------------------------------------------------------------------## ZAP
#rm ZAP_2.9.0_Crossplatform.zip
#wget 'https://github.com/zaproxy/zaproxy/releases/download/v2.9.0/ZAP_2.9.0_Crossplatform.zip'
##
#mv ZAP_2.9.0_Crossplatform.zip ~/tools/zaproxy
#cd ~/tools/zaproxy
#unzip ZAP_2.9.0_Crossplatform.zip
#cd ~/tools/
#echo "#!/bin/bash" >> ZAP.sh
#echo "java -jar ~/tools/zaproxy/ZAP_2.9.0/zap.sh" >> ZAP.sh
#chmod +x ~/tools/ZAP.sh
#echo -e "\e[96mdone\e[0m"


## Download burp---------------------------------------------------------------------------------------## Burp
#echo -e "\e[95mdownloading Burp Suite Community Edition v2.1.07\e[0m"
#mkdir ~/tools/BurpSuite
## Download burp
#rm ~/tools/BurpSuite/Burp_Suite_Community_Edition_v2.1.07.jar
#wget 'https://portswigger.net/burp/releases/download?product=community&version=2.1.07&type=jar&componentid=100'
#mv 'download?product=community&version=2.1.07&type=jar&componentid=100' ~/tools/BurpSuite/Burp_Suite_Community_Edition_v2.1.07.jar
##
#echo "#!/bin/bash" >> Burp.sh
#echo "java -jar ~/tools/BurpSuite/Burp_Suite_Community_Edition_v2.1.07.jar" >> Burp.sh
#chmod +x ~/tools/Burp.sh
#echo -e "\e[96mdone\e[0m"


##------------------------------------------------####------------------------------------------------##



#install aquatone ------not working--------
#echo -e "\e[38;5;82mInstalling.. \e[38;5;198mAquatone\e[0m"
#go get github.com/michenriksen/aquatone
#echo -e "\e[96mdone\e[0m"

#install chromium------not working--------
#echo -e "\e[38;5;82mInstalling.. \e[38;5;198mChromium\e[0m"
#sudo snap install chromium
#echo -e "\e[96mdone\e[0m"



##------------------------------------------------####------------------------------------------------##
####recon tools####

echo -e "\e[38;5;82mInstalling.. \e[38;5;198mfx-recon\e[0m"
cd ~/tools/
git clone https://github.com/V3yD3r/fx-recon.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mEndpoint-Finder\e[0m"
cd ~/tools/
git clone https://github.com/tarunkant/EndPoint-Finder.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mJSParser\e[0m"
git clone https://github.com/nahamsec/JSParser.git
cd JSParser*
sudo python setup.py install
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mSublist3r\e[0m"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mteh_s3_bucketeers\e[0m"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mdirsearch\e[0m"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mhttprobe\e[0m"
git clone https://github.com/tomnomnom/httprobe.git
cd ~/tools/httprobe/
go build main.go
mv main httprobe
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mlazys3\e[0m"
git clone https://github.com/nahamsec/lazys3.git
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mvirtual host discovery\e[0m"
git clone https://github.com/jobertabma/virtual-host-discovery.git
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mknock.py\e[0m"
git clone https://github.com/guelfoweb/knock.git
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mlazyrecon\e[0m"
git clone https://github.com/nahamsec/lazyrecon.git
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mnmap\e[0m"
sudo apt-get install -y nmap
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mmassdns\e[0m"
git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/massdns
make
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198masnlookup\e[0m"
git clone https://github.com/yassineaboukir/asnlookup.git
cd ~/tools/asnlookup
pip install -r requirements.txt
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mhttprobe\e[0m"
go get -u github.com/tomnomnom/httprobe
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198munfurl\e[0m"
go get -u github.com/tomnomnom/unfurl
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mwaybackurls\e[0m"
go get github.com/tomnomnom/waybackurls
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mcrtndstry\e[0m"
git clone https://github.com/nahamsec/crtndstry.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mamass\e[0m"
wget "https://github.com/OWASP/Amass/releases/download/v3.4.2/amass_v3.4.2_linux_amd64.zip"
unzip amass_v3.4.2_linux_amd64.zip
rm amass_v3.4.2_linux_amd64.zip
mv amass_v3.4.2_linux_amd64/ amass/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mSearch and Destroy\e[0m"
cd ~/tools/
git clone https://github.com/AardStarling/Search-and-Destroy-v3.0.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mffuf\e[0m"
cd ~/tools/
git clone https://github.com/ffuf/ffuf.git
cd ffuf/
go build main.go
mv main ffuf
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mEyewitness\e[0m"
cd ~/tools/
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mmasscan\e[0m"
git clone https://github.com/robertdavidgraham/masscan.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mNahamsec's lazyrecon\e[0m"
git clone https://github.com/nahamsec/lazyrecon.git
echo -e "\e[96mdone\e[0m"


##------------------------------------------------####------------------------------------------------##
####webtesting tools####

echo -e "\e[38;5;82mInstalling.. \e[38;5;198msqlmap\e[0m"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mw3af\e[0m"
git clone https://github.com/andresriancho/w3af.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mwapiti\e[0m"
git clone https://github.com/IFGHou/wapiti.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mwfuzz\e[0m"
git clone https://github.com/xmendez/wfuzz.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mnikto\e[0m"
git clone https://github.com/sullo/nikto.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mrace-the-web\e[0m"
git clone https://github.com/aaronhnatiw/race-the-web.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198msqlIV\e[0m"
git clone https://github.com/the-robot/sqliv.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198msqlmap\e[0m"
git clone https://github.com/sqlmapproject/sqlmap.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mXXEr\e[0m"
git clone https://github.com/TheTwitchy/xxer.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mXXSer\e[0m"
git clone https://github.com/epsylon/xsser.git
echo -e "\e[96mdone\e[0m"


##------------------------------------------------####------------------------------------------------##
####payloads and wordlists####

echo -e "\e[38;5;82mInstalling.. \e[38;5;198mfoospidy's payloads\e[0m"
git clone https://github.com/foospidy/payloads.git
echo -e "\e[96mdone\e[0m"


git clone https://github.com/fuzzdb-project/fuzzdb.git
echo -e "\e[38;5;82mInstalling.. \e[38;5;198mfuzzdb payloads\e[0m"
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mxsuperbug's payloads\e[0m"
git clone https://github.com/xsuperbug/payloads.git
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mswisskyrepo's payloads\e[0m"
git clone https://github.com/swisskyrepo/PayloadsAllTheThings
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mdownloading Seclists\e[0m"
cd ~/tools/
git clone https://github.com/danielmiessler/SecLists.git
cd ~/tools/SecLists/Discovery/DNS/
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
cd ~/tools/
echo -e "\e[96mdone\e[0m"


echo -e "\e[38;5;82mInstalling.. \e[38;5;198mBig List of Naughty Strings\e[0m"
cd ~/tools/
rm -rf big-list-of-naughty-strings/
git clone https://github.com/V3yD3r/big-list-of-naughty-strings.git
echo -e "\e[96mdone\e[0m"


##------------------------------------------------####------------------------------------------------##
##done##
clear
echo -e "\e[38;5;198m\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools\e[0m"
ls -la
echo -e "\e[38;5;198mOne last time: don't forget to set up AWS credentials in ~/.aws/!\e[0m"
echo -e "\e[38;5;198malso, reboot! :)\e[0m"

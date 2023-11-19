#!/bin/bash

#Install Go before run this script

mkdir -p ~/tools

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/owasp-amass/amass/v4/...@master
go install github.com/tomnomnom/assetfinder@latest


go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

go install github.com/lc/gau/v2/cmd/gau@latest
go install -v github.com/tomnomnom/anew@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest



git clone https://github.com/aboul3la/Sublist3r.git ~/tools/sublist3r
sudo apt install jq zip unzip

wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip && unzip SecList.zip && rm -f SecList.zip
mv SecLists-master seclists
sudo mv -f seclists /usr/share


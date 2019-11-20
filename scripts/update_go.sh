#! /bin/bash

if [[ $1 = ""  ]]; then
  echo "Provide go version"
  exit 1
fi
  
version=$1
url=https://dl.google.com/go/go$version.linux-amd64.tar.gz

wget -P ~/Downloads/ $url
sudo rm -rf /usr/local/go
echo "Deleting existing go directory..."
echo "Unpacking go$version to /usr/local/go..."
sudo tar -C /usr/local -xzf ~/Downloads/go$version.linux-amd64.tar.gz
rm -rf ~/Downloads/go$version.linux-amd64.tar.gz
echo "Done! Go version $version is now installed. Check it with 'go version' command."

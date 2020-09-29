#!/bin/bash

VERSION=$1

if [[ -z "$VERSION" ]]; then
  echo "Provide Go version"
else
  rm ~/Downloads/go$VERSION.linux-amd64.tar.gz
  echo "Downloading go v$VERSION"
  wget -v -P ~/Downloads/ https://golang.org/dl/go$VERSION.linux-amd64.tar.gz
  echo "Download is completed..."
  echo "Installing Go vesion $VERSION"
  tar -C /usr/local -xvzf ~/Downloads/go$VERSION.linux-amd64.tar.gz
  rm ~/Downloads/go$VERSION.linux-amd64.tar.gz
  echo "`go version`"
  echo "Golang successfuly installed!"
fi


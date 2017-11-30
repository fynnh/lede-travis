sudo apt-get install subversion g++ zlib1g-dev build-essential git python rsync man-db
sudo apt-get install libncurses5-dev gawk gettext unzip file libssl-dev wget
git clone https://git.lede-project.org/source.git lede
- make -j3 tools/install V=s

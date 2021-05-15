sudo yum -y install curl-devel expat-devel gettext-devel openssl-devel zlib-devel asciidoc gcc perl-ExtUtils-MakeMaker
sudo yum -y update
sudo yum -y remove git
wget https://raw.githubusercontent.com/BlueSkyXN/Yum-Git/main/git-2.31.1.tar.gz
tar -zvxf git-2.31.1.tar.gz
cd git-2.31.1
sudo make prefix=/usr/local/git all
sudo make prefix=/usr/local/git install
sudo ln -s /usr/local/git/bin/git /usr/bin/git

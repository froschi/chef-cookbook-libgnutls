maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures libgnutls"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends          "libgcrypt", ">= 0.0.1"
depends          "libp11-kit", ">= 0.0.1"
depends          "libtasn", ">= 0.0.1"

%w/ubuntu/.each { |os| supports os }

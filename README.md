# Wet Lab Database

This is a simple database to maintain strains and other wetlab artifacts

## Install

### Setup up environment
I like to install software in `~/opt` so I can use the same instructions on machines were I don't have sudo privileges

    PREFIX=$(cd ~/opt; pwd)

### Install Ruby

Follow ruby [installation instructions](https://www.ruby-lang.org/en/documentation/installation/#installers):

    cd $PREFIX
    curl -O https://cache.ruby-lang.org/pub/ruby/2.5/ruby-2.5.1.tar.gz
    tar -xzvf ruby-2.5.1.tar.gz
    cd $PREFIX/ruby-2.5.1
    ./configure --prefix=$PREFIX # --with-openssl-dir=$PREFIX
    make clean
    make -j4
    make install

Install [Ruby bundler](https://bundler.io/)

    gem install bundler

## Host the database locally

The application is a ruby on rails application so, so it must be run as a server and than accessed through a browser. To start the server

    rails server

Then navigate to the url locally that it says it is served on e.g. `http://localhost:3000`


# Rails Server Template

## Overview

This is a template chef structure for deploying Rails applications. The example template and Vagrantfile provide a single VM configuration which works out of the box and can be used to deploy any Rails 3.x or 4.x application. It's most suitable as a drop in Heroku replacement for low traffic apps.

The configuration is also flexible enough to be adapted to multi machine setups.

## Documentation

This is the example code which section one of the book "Reliably Deploying Rails Applications" available from leanpub here <https://leanpub.com/deploying_rails_applications> is based.

If you run into any issues using the template provided here, please open a Github issue, I actively monitor these and will respond as quickly as possible.

## Requirements

This template is designed to work on Ubuntu 14.04 (the current LTS) and is tested regularly against Digital Ocean and Linode.

When opening an issue, please include the Ubuntu version and provider the issue was encountered on.

## Chef List Commands for Vagrant VM
May be you have to remove the server fingerprint from Knowhost file under .ssh folder

knife solo prepare vagrant@127.0.0.1 -p 2222 -i /Users/pablo/vagrant_boxes/resumator/.vagrant/machines/default/virtualbox/private_key

knife solo cook vagrant@127.0.0.1 -p 2222 -i /Users/pablo/vagrant_boxes/resumator/.vagrant/machines/default/virtualbox/private_key nodes/127.0.0.1.json


knife solo bootstrap vagrant@127.0.0.1 -p 2222 -i /Users/pablo/vagrant_boxes/resumator/.vagrant/machines/default/virtualbox/private_key nodes/127.0.0.1.json



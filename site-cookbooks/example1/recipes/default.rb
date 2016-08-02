#
# Cookbook Name:: example1
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['rbenv']['user_installs'] = [
  { 'user'    => 'deploy',
    'rubies'  => ['2.2.2p95'],
    'global'  => '2.2.2-p95',
    'gems'    => {
      '2.2.2p95'    => [
        { 'name'    => 'bundler',
          'version' => '1.11.2'
        },
        { 'name'    => 'rake' }
      ]
    }
  }
]

rbenv_global "2.2.2p95" do
  user "deploy"
end
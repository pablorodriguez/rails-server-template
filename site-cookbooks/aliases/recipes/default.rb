#
# Cookbook Name:: aliases
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# Alias 'h' to go home

magic_shell_alias 'h' do 
  command 'cd ~'
end


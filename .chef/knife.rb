local_mode true
chef_repo_path File.expand_path('../' , __FILE__)

knife[:ssh_attribute] = "knife_zero.host"
knife[:use_sudo] = true
knife[:editor] = '/usr/bin/vim'

cookbook_path ["cookbooks", "site-cookbooks"]
node_path     "nodes"
role_path     "roles"
data_bag_path "data_bags"
environment_path "environments"
ssl_verify_mode :verify_peer
#encrypted_data_bag_secret "data_bag_key"

knife[:berkshelf_path] = "cookbooks"
knife[:before_bootstrap] = "berks vendor"
knife[:before_converge] = "berks vendor"
#
# Cookbook:: cloudGang
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package "git"

user 'ckappel' do
	shell '/bin/zsh'
	home '/home/kappelc'
end


user 'animmervoll ' do
	shell '/bin/bash'
	home '/home/nimm'
end
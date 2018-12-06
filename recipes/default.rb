#
# Cookbook:: cloudGang
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package "git"

include_recipe 'sshd::default'


group 'lecturer' do
  append                true
  gid                   12345
  group_name            'lecturers'
end

user 'ckappel' do
	comment "Christoph Kappel"
	uid '12346'
	gid 27
	home '/home/kappelc'
	shell '/bin/zsh'
	password '$1$JJsvHslasdfjVEroftprNn4JHtDi'
end


user 'animmervoll' do
	comment "Alexander Nimmervoll"
	uid '12347'
	gid 12345
	home '/home/nimm'
	shell '/bin/bash'
end

sudo 'admin' do
  user 'ckappel'
end

sudo 'sudo' do
	user 'ckappel'
end

template '/etc/motd' do 
   source 'default.erb' 
   owner 'root'
   group 'root'
   mode '0755'
   variables( 
      group: 'CloudGang', 
      members: ['TAMEDL','JERABEK','KOBER'], 
      firstname: 'KAPPEL',
	  surname: 'CHRISTOPH',
	  changeMeText: 'Change me'
   ) 
end 



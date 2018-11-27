#
# Cookbook:: cloudGang
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package "git"

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
	password 'test'
end


user 'animmervoll' do
	comment "Alexander Nimmervoll"
	uid '12347'
	gid 12345
	home '/home/nimm'
	shell '/bin/bash'
	password ''
end

sudo 'admin' do
  user 'ckappel'
end

sudo 'sudo' do
	user 'ckappel'
end

##ssh_authorized_keys "for remote access" do
##  user 'ckappel'
##  key 'rN0MXQN9+Nf5SFrmGziatmDc8SEqpVnQm/KV/oEKlJWpcXi3keEYZGHtcWDTOaNSWXOGmpy5KxtBvpSMJFeZYLJdCznoWGS5MVGYMvNB/8wEBtooU7d0P6VwSU5WP5NRbF2bIih7lXhu1ILoNhgcgT7I4sfmGQZdun7gMU8as5uoZhQItNk1NR5zl+Doh6TjQgRDG9l9o4ktyDvn8otxRY9xAFmrHeo8TbIlskgi9JkPRr/PA4NlArILPiBklKATVEyiR5LuhVOT3hDFC7DdoAeGCOhHCsPkJ+QTRim+1Iozda2MEFOZBe7mBd1acsZPrEjSLrpH996XBi5v4nC5+0ACWXxsPiM7Tz8Gr1VRR57LCG8pcF+8sM97OwOxL6gvoNrqIeHUABRlHlRBh/3+a2urPEJbORu0LLCv0pqStr24XJxSVSrYGo6K/P2Q87h1bd1sExTRVg/BPxngWb7NtatbonwKPHxZFER83v7viyuQIsoBiLhQQDnoJ4JeHZp6yTUoA9OwjxKcYAc4rnrjDhtifj2LTDbZAxCQz83OHhYhOD18aw9kJsrYvQfHsNZbxqxJ9j1gONlkNVmTNUTmC2VOe+dem3hPaGoSLJqFosv4reRG5I2FDXdNyzjFbnmbXXSqxDJ6CY9u+RATeIxUn0tQoMP5S6T5LTej1zje+6tTQ5fYXCh7NK/BoFLTSa9kaVTotyGPPZB8CDSy7bWntHXxI03UcVTUKeHHOTfuEHykOdIRBpSCOZCCR8r4mo67xVD57LVyVBxMdF+yeg3mlB7ArMXBA46y7g0E6Kv4xhxVR6S5fXlcBHj9+nBvW+VEqGdaMUSyOpEOX+TynpOTZnzMb2Fg/SWXolHGHlLITDSAYipxu59Pbzr0myi8ILIhMVPkafZBuWWxiIGS7UirVMqX/I8ArrSKml0Sl8F8fipJqiMdnsaB5eq5Ynyk858w0SKZhgl0oHZrECH9HD46rUa5cNN/LRb4tuob1JWg32V7zDtjJewW4F8EPNlL1lPCB5NWfhwDlslsn9GZ6oYdHRrGRWxWv6eumLF0BhQvm+vhxU/wUl81VSTalBwzNATFsBeCYqeGPSJh4q97c2CjeyEqopfPO5f8uzPT61cvjhbf8GLVXy//iWNifG2HRSwjNxH6iYlavcqS1mxndK0BQL+MGpS35jb3toeWNB49btvUZnWW+8bhILVTsT9ukFc+YFIV2IcVWN1xme3e/QzMT7XL5MlXbObMFHBEUuHTRDLgnZwnODkKcYyjUU9zIRPHCCXuWaKklpL8wyUMp4kLUqmglJOaTlGPUzXGF4VTdr45TzpJRTqlD0CZEvhgVNKQOfr+hoHM4E1HXx9nBFt+ZkMMTPT05ZR85qpfZn94aR8UuKybHTkxRjm1bOocPk8Yu4+zekZPvIq1X5UJHX/Hop/00ApwQIoabNcXc+H3yczyWxxsf9Lmyu41OCTwmaqHjQ7DsiUeAuogzPHgLm2cgjk8nD0c2dM83lNMtoPhOAhr20g1gEl5ILtyTsD3LIlWHdMTYMdUrLr/EM70wfSbgPsNGuVcQVpPi//aA2vozGrgSH0gpOGY1pP2d7ZmV/KQ=='
##  type 'ssh-rsa'
##  comment 'kappel@technikum-wien.at'
##end
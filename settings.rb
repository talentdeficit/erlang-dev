# all recipes used by this should work on any modern debian but are only tested on
# ubuntu currently. for more box options see http://www.vagrantbox.es/
VAGRANT_BOX = "chef/ubuntu-12.10"


# set default memory of vm
VM_MEMORY = "2048"


# though git will use your keys on the host system it won't use your user defaults,
#  you should set those here
# GIT_USER = "your name"
GIT_USER = nil
# GIT_EMAIL = "your@email.com"
GIT_EMAIL = nil


# default locale of the resulting system
LOCALE = "en_US.utf8"


# sync local directories on the host machine with directories on the vm by providing
#  tuples of `["host_dir", "vm_mirror"]'. vagrant requires the `vm_mirror' directory
#  be an absolute path
SYNCED_DIRS = [
  ["~/dev/", "/home/vagrant/dev/"]
]


# this will be the default `erl' on the resulting system
ERLANG_RELEASE = "17.1"

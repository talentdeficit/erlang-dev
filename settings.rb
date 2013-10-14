# all recipes used by this should work on any modern debian but are only tested on
# ubuntu currently. for more box options see http://www.vagrantbox.es/
VAGRANT_BOX = "precise32"

# though git will use your keys on the host system it won't use your user defaults,
#  you should set those here
# GIT_USER = "alisdair sullivan"
GIT_USER = nil
# GIT_EMAIL = "alisdairsullivan@yahoo.ca"
GIT_EMAIL = nil


# sync local directories on the host machine with directories on the vm by providing
#  tuples of `["host_dir", "vm_mirror"]'. vagrant requires the `vm_mirror' directory
#  be an absolute path
SYNCED_DIRS = [
#  ["~/dev/", "/home/vagrant/dev/"]
]
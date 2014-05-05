# all recipes used by this should work on any modern debian but are only tested on
# ubuntu currently. for more box options see http://www.vagrantbox.es/
VAGRANT_BOX = "precise32"


# though git will use your keys on the host system it won't use your user defaults,
#  you should set those here
# GIT_USER = "your name"
GIT_USER = "alisdair sullivan"
# GIT_EMAIL = "your@email.com"
GIT_EMAIL = "alisdairsullivan@yahoo.ca"


# default locale of the resulting system
LOCALE = "en_US.utf8"


# sync local directories on the host machine with directories on the vm by providing
#  tuples of `["host_dir", "vm_mirror"]'. vagrant requires the `vm_mirror' directory
#  be an absolute path
SYNCED_DIRS = [
  ["~/dev/", "/home/vagrant/dev/"]
]


# uncomment specific releases to install them to the erlenv directory
ERLENV_RELEASES = [
# {"otp_git_ref" => "OTP_R14B", "prefix" => "/home/vagrant/.erlenv/releases/r14b"},
# {"otp_git_ref" => "OTP_R14B04", "prefix" => "/home/vagrant/.erlenv/releases/r14b04"},
# {"otp_git_ref" => "OTP_R15B", "prefix" => "/home/vagrant/.erlenv/releases/r15b"},
# {"otp_git_ref" => "OTP_R15B01", "prefix" => "/home/vagrant/.erlenv/releases/r15b01"},
# {"otp_git_ref" => "OTP_R15B02", "prefix" => "/home/vagrant/.erlenv/releases/r15b02"},
# {"otp_git_ref" => "OTP_R15B03-1", "prefix" => "/home/vagrant/.erlenv/releases/r15b03-1"},
# {"otp_git_ref" => "OTP_R16B", "prefix" => "/home/vagrant/.erlenv/releases/r16b"},
# {"otp_git_ref" => "OTP_R16B01", "prefix" => "/home/vagrant/.erlenv/releases/r16b01"},
# {"otp_git_ref" => "OTP-17.0", "prefix" => "/home/vagrant/.erlenv/releases/17"}
]


# this will be the default `erl' on the resulting system
SYSTEM_RELEASE = "OTP-17.0"

include_recipe "apt"
include_recipe "build-essential"
include_recipe "git"

user = node["default"]["user"]
email = node["default"]["email"]

if user
  bash "git user" do
    code <<-EOH
git config --system user.name #{user}
EOH
  end
end

if email
  bash "git email" do
    code <<-EOH
git config --system user.email #{email}
EOH
  end
end

if node["erlang"]["releases"].length > 1
  git "erlenv" do
    user "vagrant"
    group "vagrant"
    repository "https://github.com/talentdeficit/erlenv"
    destination "/home/vagrant/.erlenv"
    action :sync
  end

  file "/home/vagrant/.bash_profile" do
    user "vagrant"
    group "vagrant"
    content <<-EOS
export PATH="$HOME/.erlenv/bin:$PATH"
eval "$(erlenv init -)"
EOS
  end
end

# include rebar by default for all erlang installations
node.set['erlang']['rebar'] = true

include_recipe "erlang"
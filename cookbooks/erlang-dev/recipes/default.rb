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
include_recipe "elixir"
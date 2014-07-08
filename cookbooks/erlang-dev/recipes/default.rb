include_recipe "apt"
include_recipe "build-essential"
include_recipe "git"

node.default["erlang"]["gui_tools"] = "false"
node.default["erlang"]["install_method"] = "source"

include_recipe "erlang"

user = node["erlang-dev"]["user"]
email = node["erlang-dev"]["email"]

if user
  bash "git user" do
    code <<-EOH
git config --system user.name "#{user}"
EOH
  end
end

if email
  bash "git email" do
    code <<-EOH
git config --system user.email "#{email}"
EOH
  end
end

locale = node["erlang-dev"]["locale"]

file "/etc/default/locale" do
  content <<-EOS
LC_ALL="#{locale}"
LANG=#{locale}
EOS
end

git "rebar" do
  repository "https://github.com/rebar/rebar.git"
  reference "2.5.0"
  destination "#{Chef::Config['file_cache_path']}/rebar"
  action :sync
end

bash "install rebar to /usr/local/bin" do
  code <<-EOH
cd #{Chef::Config['file_cache_path']}/rebar
/usr/local/bin/escript bootstrap
cp rebar /usr/local/bin/rebar
EOH
end
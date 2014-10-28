include_recipe "apt"
include_recipe "build-essential"
include_recipe "git"

user = node["erlang-dev"]["user"]
email = node["erlang-dev"]["email"]

erlvsn = node["erlang-dev"]["erlvsn"]
exvsn = node["erlang-dev"]["exvsn"]


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

apt_repository "erlang-solutions" do
  uri "http://packages.erlang-solutions.com/ubuntu"
  distribution node['lsb']['codename']
  components ["contrib"]
  key "http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc"
end

package "erlang" do
  version erlvsn
end

package "elixir" do
  version exvsn
end

git "rebar" do
  repository "https://github.com/rebar/rebar.git"
  reference "2.5.1"
  destination "#{Chef::Config['file_cache_path']}/rebar"
  action :sync
end

bash "install rebar to /usr/local/bin" do
  code <<-EOH
cd #{Chef::Config['file_cache_path']}/rebar
escript bootstrap
cp rebar /usr/local/bin/rebar
EOH
end
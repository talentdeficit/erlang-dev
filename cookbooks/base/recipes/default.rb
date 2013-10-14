include_recipe "apt"
include_recipe "build-essential"
include_recipe "git"

user = node["base"]["user"]
email = node["base"]["email"]

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
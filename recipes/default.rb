apt_package 'curl'

Chef::Log.info("Installing Node.js '#{node['nodejs']['version']}'")

execute 'prepare node apt' do
  command 'curl -sL https://deb.nodesource.com/setup_6.x | bash -'
  action :run
end

apt_package 'nodejs'

execute 'install n' do
    command 'npm install n -g'
    action :run
end

execute 'update node' do
    command 'n ' + node['nodejs']['version']
    action :run
end

for dep in node['nodejs']['dependencies']
  Chef::Log.info("Installing '#{dep}' dependency")
  execute 'install dependency' do
    command 'npm install -g '+ dep
    action :run
  end
end

apt_package 'curl'

execute 'prepare node apt' do
  command 'curl -sL https://deb.nodesource.com/setup_6.x | bash -'
  action :run
end

apt_package 'nodejs'
apt_package 'npm'

execute 'install n' do
    command 'npm install n -g'
    action :run
end

execute 'install node' do
    command 'n ' + node['nodejs']['version']
    action :run
end

execute 'install bower' do
  command 'npm install bower -g'
  action :run
end

execute 'install gulp' do
  command 'npm install gulp -g'
  action :run
end

apt_package 'nodejs' do
  action :remove
end

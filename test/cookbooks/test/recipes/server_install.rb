include_recipe 'locale::default'

postgresql_repository 'install' do
  version '9.6'
end

postgresql_server_install 'package' do
  version '9.6'
end

postgresql_server_conf 'PostgreSQL Config' do
  version '9.6'
  notification :reload
end

postgresql_repository 'install' do
  version '9.6'
end

postgresql_server_install 'package' do
  action %i(install create)
  version '9.6'
end

postgresql_server_conf 'PostgreSQL Config' do
  version '9.6'
  notification :reload
end

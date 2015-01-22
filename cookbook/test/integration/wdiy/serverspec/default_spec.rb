require 'serverspec'

# Required by serverspec
set :backend, :exec
set :path, '/opt/rbenv/bin:/opt/rbenv/shims:$PATH'

describe command('rbenv global') do
  its(:stdout) { should match 'system' }
end
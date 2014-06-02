if node[:opsworks][:instance][:layers].include?('rails-app')

  include_recipe "opsworks-rails-precompile::precompile"
  include_recipe "opsworks-rails-precompile::restart_command_after"

end
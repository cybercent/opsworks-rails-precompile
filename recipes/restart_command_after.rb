node[:deploy].each do |application, deploy|

  execute "restart Rails app #{application} for custom env after precompile" do
    cwd "#{deploy[:deploy_to]}/current"
    command  "#{deploy[:deploy_to]}/shared/scripts/unicorn restart 2>&1 >>/var/log/restart_recipe.log"
    user deploy[:user]

    action :nothing
  end

end

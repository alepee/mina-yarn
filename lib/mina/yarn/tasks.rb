set :yarn_bin, 'yarn'
set :yarn_options, '--production'


namespace :yarn do
  desc 'Install node modules using Yarn.'
  task install: :environment do
    comment 'Installing node modules using Yarn'
    command %{
      sub_directory=$(pwd | sed -r "s/.*?$(basename $build_path)//g")
      #{echo_cmd %[mkdir -p "#{fetch(:deploy_to)}/#{fetch(:shared_path)}/$sub_directory/node_modules"]}
      #{echo_cmd %[ln -s "#{fetch(:deploy_to)}/#{fetch(:shared_path)}/$sub_directory/node_modules" "node_modules"]}
      #{echo_cmd %[#{fetch(:yarn_bin)} install #{fetch(:yarn_options)}]}
    }
  end
end

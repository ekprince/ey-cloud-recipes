# Chef::Log.info "db_stack_name: #{@node[:engineyard][:environment][:db_stack_name]}"
db_stack(node['engineyard']['environment']['db_stack_name'])
Chef::Log.info "chosendb: #{db_stack}"

postgres_version("9.0")
postgres_root("/db/postgresql/")

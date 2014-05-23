require 'katello/plugin.rb'

Foreman::Plugin.find(:katello).security_block :user do
  permission :my_organizations,
             {
              'katello/api/v1/candlepin_proxies' => [:list_owners]
             },
             :public => true
end

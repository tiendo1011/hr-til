require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module HrTil
  class Application < Rails::Application
    config.active_record.schema_format = :ruby
    config.autoload_paths << Rails.root.join('lib')
    config.time_zone = 'Bangkok'


    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :options]
      end
    end
  end
end

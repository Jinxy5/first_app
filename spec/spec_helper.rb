# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
#require 'factory_girl_rails'

#require 'capybara/poltergeist'
require 'capybara/rspec'
require 'capybara/rails'

Capybara.default_driver = :selenium

#require 'ap'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  #config.include ActionView::Helpers::DateHelper
  #config.include FactoryGirl::Syntax::Methods
  config.include Capybara::DSL

# transactional fixtures must be set to false in order for databse cleaner to work. It must also 
# be set BEFORE the rest of the configuration

  config.use_transactional_fixtures = false
=begin  
  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
=end
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end

group :development do
end 

group :test, :development do
	gem 'rspec-rails'
end

group :test do
	gem 'capybara'
	gem 'selenium-webdriver'
end

group :production do
	gem 'rails_12factor'
end

group :test, :development, :production do
	source 'https://rubygems.org'

	gem 'rails', '4.0.2'

	gem 'pg'
	gem 'sass-rails', '~> 4.0.0'
	gem 'uglifier', '>= 1.3.0'
	gem 'coffee-rails', '~> 4.0.0'
	gem 'jquery-rails'
	gem 'turbolinks'
	gem 'jbuilder', '~> 1.2'
# gem 'bcrypt-ruby', '~> 3.1.2'
# gem 'unicorn'
# gem 'capistrano', group: :development
# gem 'debugger', group: [:development, :test]

end

group :doc do
  gem 'sdoc', require: false
end

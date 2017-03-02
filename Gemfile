source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'devise' 
gem 'carrierwave'
gem 'bootstrap-sass', '~> 3.3.6'
#Iconos
gem "font-awesome-rails"
#Manejo de Imagenes
gem "mini_magick"
#Paginacion
gem 'will_paginate',           '3.1.0'
#Fronend
gem 'bootstrap-will_paginate', '0.0.10'
#Ver los campos en los modelos
gem 'annotate'
#Buscador con autocompletado
gem 'chosen-rails'

gem 'jquery-ui-rails'
#Guardar en amazon
gem 'fog', '~> 1.38'
#Frontend
gem 'twitter-bootstrap-rails', '~> 3.2', '>= 3.2.2'
gem 'ransack'
#Variables de entorno para seguridad
gem 'figaro'
gem 'image-picker-rails'
#Sub Formularios

#Editor Rico
gem 'ckeditor_rails', '~> 4.5', '>= 4.5.10'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
   gem 'rails_12factor'
  gem 'pg'
end
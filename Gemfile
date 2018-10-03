source 'https://rubygems.org'

ruby '2.5.1'
gem "middleman-gh-pages"
gem "middleman-imageoptim", "~> 0.1.4"

gem 'middleman', '~>3.1.6'
gem "middleman-blog"
gem 'rack-contrib', '~> 1.1'

gem 'foreman'

gem 'puma'

gem 'newrelic_rpm'

group :assets do
    gem 'therubyracer', '~> 0.12' unless RUBY_PLATFORM.match(/darwin|mswin/)
end

group :development do
    # Live-reloading plugin
    gem 'middleman-livereload', '~> 3.1.0'

    # For faster file watcher updates on Windows:
    gem 'wdm', '~> 0.1.0', :platforms => [:mswin, :mingw]
end

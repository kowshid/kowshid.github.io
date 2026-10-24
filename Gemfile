source 'https://rubygems.org'

# Jekyll 4 runs on current Ruby. GitHub's built-in Pages build is stuck on
# Jekyll 3 / Ruby 3.3, so .github/workflows/pages.yml builds the site instead.
gem 'jekyll', '~> 4.4'

group :jekyll_plugins do
  gem 'jekyll-feed', '~> 0.17'
  gem 'jekyll-redirect-from', '~> 0.16'
end

# Ruby 3.4/4.0 moved these out of the standard library,
# but Jekyll and its dependencies still require them.
gem 'base64'
gem 'bigdecimal'
gem 'csv'
gem 'logger'
gem 'ostruct'
gem 'webrick'

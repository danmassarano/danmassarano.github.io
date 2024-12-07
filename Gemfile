source "https://rubygems.org"

gem 'jekyll', '~> 4.3.4'
gem 'bundler', '~> 2.4.3'
gem 'faraday-retry'
gem 'backports', '~> 3.25'
gem 'kramdown'
gem 'puma'
gem 'jekyll-admin', '~> 0.11.1'
gem 'jekyll-sass-converter', '< 3.0'
# gem 'sass-embedded', '~> 1.57.1' # Removed due to compatibility issues on github actions


# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
# gem "github-pages", group: :jekyll_plugins

# Plugins
group :jekyll_plugins do
    # gem 'devlopr', '~> 0.4.5'
    gem 'jgd', '~> 1.13'
    gem 'jekyll-feed', '~> 0.17.0'
    gem 'jekyll-paginate', '~> 1.1.0'
    gem 'jekyll-gist', '~> 1.5.0'
    gem 'jekyll-seo-tag', '~> 2.8.0'
    gem 'jekyll-sitemap', '~> 1.4.0'
    # gem 'sass-embedded', '~> 1.57.1'
    # gem 'jekyll-sass-converter', '~> 3.0.0'
    # gem 'jekyll-admin', '~> 0.11.1'
end


# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", "~> 2.0"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.2.0", :install_if => Gem.win_platform?
gem "webrick", "~> 1.9"
###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
page "/product/*", :layout => "product"
page '/comingsoon.html', :layout => "comingsoon" 
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Activate blogging

activate :blog do |blog|
   page "blog/*", :layout=> :article_layout
   blog.prefix = "blog"
   blog.sources = ":year-:month-:day-:title.html"
   blog.taglink = "tags/:tag.html"
   blog.summary_separator = /(READMORE)/
   blog.summary_length = 250
   blog.year_link = ":year.html"
   blog.month_link = ":year/:month.html"
   blog.day_link = ":year/:month/:day.html"
   blog.default_extension = ".markdown"

   blog.tag_template = "tag.html"
   blog.calendar_template = "calendar.html"

   #blog.paginate = true
   #blog.per_page = 10
   blog.page_link = "page/:num"
   blog.permalink = "blog/:year/title.html"
end


activate :directory_indexes

set :build_dir, 'tmp'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
   activate :minify_css

  # Minify Javascript on build
   activate :minify_javascript

  # Enable gzip compression
   activate :gzip

  # Enable image compression
   activate :imageoptim

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end



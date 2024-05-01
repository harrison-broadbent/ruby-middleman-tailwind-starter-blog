# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :directory_indexes # for pretty URLs
activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :blog do |blog|
  blog.prefix = "blog"
  blog.sources = "{title}.html"
  blog.default_extension = ".md"
  blog.layout = "markdown_layout"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

# Middleman doesn't support per-filetype layouts
markdown_pages = ["about", "blog"]
markdown_pages.each do |pge|
  page "/#{pge}.html", :layout => "markdown_layout"
end

#-------------#

# MARKDOWN
#
activate :syntax
set :markdown_engine, :kramdown
set :markdown, input: "GFM", smartypants: true, format: :html5, auto_ids: true

#-------------#

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript, compressor: Terser.new
# end

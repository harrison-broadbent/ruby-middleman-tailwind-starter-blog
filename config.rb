activate :livereload                # live-reloading in dev
activate :directory_indexes         # for pretty URLs
activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :blog do |blog|
  blog.prefix = "blog" 							 # directory prefix
  blog.sources = "{title}.html" 		# filename glob
  blog.default_extension = ".md" 		# file extension
  blog.layout = "markdown_layout" 	# layout from source/layouts
  blog.permalink = "{title}.html"   # format of the URLs middleman generates
  blog.publish_future_dated = true  # by default only builds posts with future dates
end

# Middleman doesn't support per-filetype layouts.
# The blog/ files already use the markdown layout, but we need to configure
# these top-level files separately.
#
# See 'Layouts' (https://middlemanapp.com/basics/layouts/)
#
markdown_pages = ["about", "blog"]
markdown_pages.each do |pge|
  page "/#{pge}.html", :layout => "markdown_layout"
end

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

#-------------#

# MARKDOWN
#
activate :syntax                    # code highlighting
set :markdown_engine, :kramdown     # md parsing
set :markdown,                      # config for :kramdown
    input: "GFM",
    smartypants: true,
    format: :html5

#-------------#

# configure :build do
#   activate :minify_css
#   activate :minify_javascript, compressor: Terser.new
# end

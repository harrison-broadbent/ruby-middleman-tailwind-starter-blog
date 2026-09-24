# Template config
#
set :site_url, "https://ruby-middleman-tailwind-starter-blog.pages.dev" # for sitemap.xml.builder
set :site_title, "Ruby, Middleman & Tailwind Starter Kit"                     # site title for <title> meta tag
set :site_description, "A Middleman blog template with TailwindCSS."           # fallback meta description, and RSS feed description
set :trailing_slash, false                                                 # turn site.com/home/ -> site.com/home

# Extensions
#
activate :livereload                # live-reloading in dev
activate :directory_indexes         # for pretty URLs
activate :asset_hash          	    # hash assets for better caching

# main.css is the Tailwind input file, compiled into tailwind.css (see Procfile.dev)
ignore "stylesheets/main.css"

activate :blog do |blog|
  # blog.prefix = "blog" 						  # enable this to put your URLs in a sub-path like site.com/blog/article-name
  blog.layout = "markdown_layout"    # layout from source/layouts
  blog.sources = "blog/{title}.html" # filename glob
  blog.permalink = "{title}.html"    # format of the URLs middleman generates
  blog.default_extension = ".md" 		 # file extension
  blog.publish_future_dated = false  # future-dated posts are drafts. they're visible in dev, but excluded from builds
  blog.new_article_template = File.expand_path("templates/article.erb", __dir__)
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
    toc_levels: 2..6,               # H2->H6 appear in markdown {:toc} block
    format: :html5

#-------------#

# You can enable these if you want, but some static hosts already do this for you
#
# configure :build do
#   activate :minify_css
#   activate :minify_javascript, compressor: Terser.new
# end

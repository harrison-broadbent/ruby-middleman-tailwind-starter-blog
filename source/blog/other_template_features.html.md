---
title: Other features of this template
description: A short breakdown of the other features I've included in this Middleman blog template.
date: 2024-05-03 09:23
---

# Other features of this template (Procfile, TailwindCSS, Extensions & Sitemaps)

Here's a breakdown of the handy features I've included in this template.

<details class='italic' open><summary>Table of Contents</summary><aside markdown="1">
* seed list
{:toc}
</aside></details>

## Procfile.dev and bin/dev

Similar to Ruby on Rails, I've included a `Procfile.dev` and `bin/dev` script in this template. The `Procfile.dev` is handy for running multiple processes (since we need to run both `middleman server` and the `tailwindcss` parser).

To start everthing locally, just run `bin/dev`. This will launch the processes in the `Procfile.dev` (you can add your own processes here):

```sh
# Procfile.dev

server: middleman server
css: npx tailwindcss -i ./source/stylesheets/main.css -o ./source/stylesheets/tailwind.css --watch
```

## TailwindCSS

[TailwindCSS](https://tailwindcss.com/) is included in this template natively. You'll need `nodejs` / `npx` available to install and run it locally.

Within `tailwind.config.js` I've configured TailwindCSS with the correct `content:` paths to parse the files in this template. I've also included the `typography` plugin for rendering markdown (once parsed into HTML via kramdown) using the `prose` class in the `markdown_layout.erb`.

```erb
<%# layouts/markdown_layout.erb %>

<% wrap_layout :layout do %>
  <div id="prose-content" class="prose">
    <%= yield %>
  </div>
<% end %>
```

## Extensions (livereload, syntax, directory_indexes)

I've included the [middleman-livereload](https://github.com/middleman/middleman-livereload) and [middleman-syntax](https://github.com/middleman/middleman-syntax) gems in the `Gemfile`, and activated them in `config.rb` alongside `directory_indexes`:

```ruby
activate :livereload                # live-reloading in dev
activate :directory_indexes         # for pretty URLs
...

activate :syntax                    # code highlighting
...
```

Everything should just work. When you save a file locally, the Middleman development server will automatically reload. Syntax highlighting should work without any configuration (see [blog/blog_post_with_code](blog/blog_post_with_code) for more info).

The `directory_indexes` extension is used for [pretty URLs](https://middlemanapp.com/advanced/pretty-urls/). With this activated, the URL paths Middleman generates look like `/blog` and `/about`, rather than `/blog.html` and `/about.html`.

## Sitemaps

I've included a sitemap at `source/sitemap.xml.builder`. This uses the `builder` gem to automatically generate a sitemap for your site:

```ruby
site_url = config.site_url

xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  sitemap.resources.select { |page| page.destination_path =~ /\.html/ }.each do |page|
    xml.url do
		...
	end
end
```

Make sure you update `site_url` to match the production URL of your website. You can preview your sitemap at `localhost:4567/sitemap.xml`.

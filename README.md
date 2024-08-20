# Ruby Middleman Tailwind Starter Blog

A Middleman blog template configured with TailwindCSS, markdown parsing, code highlighting, a sitemap.xml and more. It perfect for lightweight blogging or a personal website. Ruby knowledge is helpful, but not necessary.

## Features

- Middleman v4.5,
- TailwindCSS v3.4.10,
- Markdown support (via `kramdown`),
- Blogging support (via `middleman-blog`),
- Syntax highlighting support (via `middleman-syntax`),
- Live-reloading (via `middleman-livereload`) and `bin/dev` script,
- Automatic `sitemap.xml` generation,
- SEO-friendly automatic meta tags for `title` and `description`,
- Perfect 100/100 PageSpeed score (near perfect for mobile)
- Github Action for image compression (see `compress_images.yml`).

Visit the [live template demo](ruby-middleman-tailwind-starter-blog-3sl96oa0w.vercel.app) for a preview of how it looks (although of course, you can customize it yourself).

I've used [Middleman](https://middlemanapp.com/) for years to build my personal website, and this template is a consolidation of everything I've learned.

## Getting started

Before you get started, make sure you've got Ruby installed. Currently, this template uses Ruby `v3.3.0`.

Clone this template, then install the required packages and start the server:

```sh
# install Ruby packages & tailwindcss
bundle
npm install

# start dev server
bin/dev
```

## Deploying

This template is easy to deploy. Any static site host should work; I've included the Netlify + Vercel "Deploy" buttons below.

|         |                                                                                                                                                                                                   |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Netlify | [![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/harrison-broadbent/ruby-middleman-tailwind-starter-blog) |
| Vercel  | [![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fharrison-broadbent%2Fruby-middleman-tailwind-starter-blog)              |

# Ruby, Middleman & Tailwind Starter Blog template

Live demo: [Ruby, Middleman & Tailwind starter blog](https://ruby-middleman-tailwind-starter-blog.pages.dev)

A Middleman blog template configured with TailwindCSS, markdown parsing, code highlighting, a sitemap.xml and more. It perfect for lightweight blogging or a personal website. Ruby knowledge is helpful, but not necessary.

## Features

- Middleman v4.6,
- Tailwind CSS v4.1,
- Markdown support (via `kramdown`),
- Blogging support (via `middleman-blog`),
- Syntax highlighting support (via `middleman-syntax`),
- Live-reloading (via `middleman-livereload`) and `bin/dev` script,
- Automatic `sitemap.xml` and `feed.xml` generation,
- SEO-friendly automatic meta tags for `title` and `description`,
- Perfect 100/100 PageSpeed score (near perfect for mobile)
- Github Action for image compression (see `compress_images.yml`).

I've used [Middleman](https://middlemanapp.com/) for years to build my [personal website](https://harrisonbroadbent.com/about), and this template consolidates everything I've learned.

## Getting started

Before you get started, make sure you've got Ruby installed. Currently, this template uses Ruby `v3.2.2` (for compatibility).

Clone this template, then install the required packages and start the server:

```sh
# install packages (ruby packages + Tailwind CSS javascript package)
bundle
npm install

# start dev server
bin/dev
```

## Deploying

This template is easy to deploy. Any static site host should work; I've included the Cloudflare, Netlify & Vercel "Deploy" buttons below.

|            |                                                                                                                                                                                                   |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Cloudflare | [![Deploy to Cloudflare](https://deploy.workers.cloudflare.com/button)](https://deploy.workers.cloudflare.com/?url=https://github.com/harrison-broadbent/ruby-middleman-tailwind-starter-blog)    |
| Netlify    | [![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/harrison-broadbent/ruby-middleman-tailwind-starter-blog) |
| Vercel     | [![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fharrison-broadbent%2Fruby-middleman-tailwind-starter-blog)              |

> Note: These days I use Cloudflare for all my hosting and I can heartily recommend them. I [switched from Cloudflare to Netlify](https://harrisonbroadbent.com/blog/goodbye-netlify-hello-cloudflare/) a while ago and haven't looked back.

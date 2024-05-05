# Ruby Middleman Tailwind Starter Blog

A Middleman blog template configured with TailwindCSS, markdown parsing, code highlighting, a sitemap.xml and more. It perfect for lightweight blogging or a personal website. Ruby knowledge is helpful, but not necessary.

This template includes:

- Middleman `v4.5`,
- TailwindCSS `v3.4.3`,
- Markdown support (via `kramdown`),
- Blogging support (via `middleman-blog`),
- Syntax highlighting support (via `middleman-syntax`),
- Automatic sitemap generation,
- `bin/dev` and live-reloading (via `middleman-livereload`),
- Automatic meta tags for `title` and `description`

You can check out the [live template demo](https://main--ruby-middleman-tailwind-starter-blog.netlify.app/) for a preview of how it looks (although of course, you can customize it yourself).

I've used [Middleman](https://middlemanapp.com/) for years to build my personal website, and this template is a consolidation of everything I've learned.

## Getting started

Before you get started, make sure you've got Ruby installed. Currently, this template uses Rube `v3.3.0`.

Clone this template, then install the required packages and start the server:

```sh
bundle   # install packages
bin/dev  # start dev server
```

## Deploying

This template is easy to deploy. Any static site host should work; I personally use Netlify and I've included the Netlify + Vercel "Deploy" buttons below.

|         |                                                                                                                                                                                                   |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Netlify | [![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/harrison-broadbent/ruby-middleman-tailwind-starter-blog) |
| Vercel  | [![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fharrison-broadbent%2Fruby-middleman-tailwind-starter-blog)              |

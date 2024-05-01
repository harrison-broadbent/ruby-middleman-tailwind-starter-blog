---
title: Hello blog! (an overview)
date: 2024-05-01 09:23
---

# Hello, blog!

Welcome to this blog post! It's a short overview of some of this template's main markdown features.

The Middleman blog engine supports all the things you'd expect, like markdown files, frontmatter, tags and pagination ([read more](https://middlemanapp.com/basics/blogging/))

## Markdown parsing

This template uses `kramdown` to parse markdown. It supports a bunch of handy things like:

| Tables?           | Yep             |
| ----------------- | --------------- |
| Bold text         | **yep**         |
| Italics           | _yep_           |
| Footnotes         | ?[^1]           |
| Strikethrough     | ~~yep~~         |
| Table of contents | yep (see above) |

## Images & captions

![Pencil](images/pencils.png){:class="max-w-xs"} _This is a caption._

Render an image caption by including some italic text on the same line as your image:

```md
![Pencil](images/pencils.png){:class="max-w-xs"} _We've even got images & captions!_
```

Within `main.css` I've included a custom CSS selector to target that text and make it appear as a caption:

```scss
#prose-content > p > img + em {
  @apply text-stone-500 text-sm;
}
```

## Table of contents

You can natively generate a table of contents (thanks to kramdown) that looks like this:

<details>
<summary>Table of Contents</summary>
<aside markdown="1">
* seed list
{:toc}
</aside>
</details>

Here's the code:

```md
<details>
<summary>Table of Contents</summary>
<aside markdown="1">
* seed list
{:toc}
</aside>
</details>
```

Unfortunately, Middleman doesn't seem to support partials in `.html.md` files, so if you want a table of contents, you have to copy that code from file to file.

## Blog configuration

Towards the start of `config.rb` you'll see this:

```ruby
activate :blog do |blog|
  blog.prefix = "blog" 				# directory prefix
  blog.sources = "{title}.html" 	# filename glob
  blog.default_extension = ".md" 	# file extension
  blog.layout = "markdown_layout" 	# layout from source/layouts
  blog.permalink = "{title}.html"   # format of the URLs middleman generates
end
```

This is configuration for the `middleman-blog` extension, which powers the blog engine of this template.

The result is that if you add a new `.html.md` file to the `source/blog` directory, it will get picked up by Middleman and rendered on the index page. It's rendered into the `layouts/markdown_layout.erb` layout, which also displays the menu and applies the TailwindCSS `prose` class to the output.

> Read more: [Blogging with Middleman](https://middlemanapp.com/basics/blogging/)

[^1]: yep

---
title: Hello blog! (an overview of markdown feature support)
description: A short overview of the markdown features supported by this Middleman blog template, like markdown parsing, frontmatter, syntax-highlighted code blocks and more.
date: 2024-05-01 09:23
---

# Hello, blog!

Welcome to this blog post! It's a short overview of some of this template's main features.

The Middleman blog engine supports all the things you'd expect, like markdown files, frontmatter, tags and pagination ([read more](https://middlemanapp.com/basics/blogging/))

<details class='italic' open><summary>Table of Contents</summary><aside markdown="1">
* seed list
{:toc}
</aside></details>

## Markdown parsing

This template uses `kramdown` to parse markdown. It supports a bunch of handy things like:

| Tables?           | Yep             |
| ----------------- | --------------- |
| Bold text         | **yep**         |
| Italics           | _yep_           |
| Footnotes         | ?[^1]           |
| Strikethrough     | ~~yep~~         |
| Table of contents | yep (see above) |

## Frontmatter

Middleman supports frontmatter in markdown pages by placing a block of YAML at the start of a document, like this:

```yaml
---
title: A page
date: 2024-05-03
---
```

Frontmatter can be accessed using Ruby code via `current_page.data.title`, `.date` etc. It's automatically used by the `_head_meta_tags.html.erb` partial to generate HTML `<meta>` tags.

Blog pages require a `title:` and `date:` to be provided, and also support `description:`. Other markdown pages (ie: `about.html.md`) only require `title:` with an optional `description:` —

```yaml
---
title: Blog page (source/blog/example.html.md)
date: 2024-05-03
description: Optional
---
title: Regular page (source/about.html.md)
description: Optional
---
```

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
  ...
end
```

This is configuration for the `middleman-blog` extension, which powers the blog engine of this template.

The result is that if you add a new `.html.md` file to the `source/blog` directory, it will get picked up by Middleman and rendered on the index page. It's rendered into the `layouts/markdown_layout.erb` layout, which also displays the menu and applies the TailwindCSS `prose` class to the output.

> Read more: [Blogging with Middleman](https://middlemanapp.com/basics/blogging/)

[^1]: yep

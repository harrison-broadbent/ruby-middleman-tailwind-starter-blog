---
title: A blog post with some code
date: 2024-05-02 09:23
---

# A blog post with some code.

This template includes `rouge` and `middleman-syntax` to enable code highlighting. If you open `source/stylesheets/code_highlighting.css.erb` you'll see this:

```erb
<%= Rouge::Themes::Molokai.render(:scope => '.highlight') %>
```

This is styling with the Rouge "Molokai" theme. You can view a full preview of Rouge themes [here](https://mazhuang.org/rouge-themes/#bw) or [also here](https://spsarolkar.github.io/rouge-theme-preview/). The API reference is available from the [RubyDoc page](https://www.rubydoc.info/gems/rouge/3.2.1/Rouge/Themes).

Here's another code example:

```ruby
# Compute the nth fibonacci number
#
def nth_fib(n)
	return 1 if n <= 2

	nth_fib(n-1) + nth_fib(n-2)
end
```

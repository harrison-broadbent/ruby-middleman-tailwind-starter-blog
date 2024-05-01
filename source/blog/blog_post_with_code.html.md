---
title: A blog post with some code
date: 2024-05-02 09:23
---

# A blog post with some code.

This template includes `rouge` and `middleman-syntax` to enable code highlighting. If you open `source/stylesheets/code_highlighting.css.erb` you'll see this:

```erb
<%= Rouge::Theme.find("base16.solarized.light").render(:scope => '.highlight') %>
```

This is styling with the Rouge "Base16 Solarized" theme. You can view a full preview of Rouge themes [here](https://mazhuang.org/rouge-themes/#bw) or [also here](https://spsarolkar.github.io/rouge-theme-preview/). The API reference is available from the [RubyDoc page](https://www.rubydoc.info/gems/rouge/3.2.1/Rouge/Themes).

Here's some code examples:

```ruby
# ruby
#
def hello(name)
	puts "hello, #{name}"
end

hello("world!")
```

```c
// c
//
#include <stdio.h>

int main() {
	printf("hello, world!");
	return 0;
}
```

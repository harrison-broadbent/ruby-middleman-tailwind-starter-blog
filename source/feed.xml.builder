# frozen_string_literal: true
site_url = config.site_url

# blog.articles is already sorted newest-first
posts = blog.articles

xml.instruct! :xml, version: "1.0", encoding: "utf-8"
xml.rss version: "2.0",
        "xmlns:atom" => "http://www.w3.org/2005/Atom",
        "xmlns:content" => "http://purl.org/rss/1.0/modules/content/" do
  xml.channel do
    xml.title config.site_title
    xml.link site_url
    xml.description config.site_description
    xml.language "en-us"
    xml.lastBuildDate(posts.first.date.to_time.rfc2822) if posts.any?
    xml.tag!("atom:link", href: "#{site_url}/feed.xml", rel: "self", type: "application/rss+xml")

    posts.each do |post|
      # feed readers need absolute URLs for images and links
      content = post.body.gsub(/(src|href)="\//, "\\1=\"#{site_url}/")

      xml.item do
        xml.guid "#{site_url}#{post.url}"
        xml.link "#{site_url}#{post.url}"
        xml.title post.data.title
        xml.pubDate post.date.to_time.rfc2822
        xml.description post.data.description
        xml.tag!("content:encoded") { xml.cdata! content }
      end
    end
  end
end

# frozen_string_literal: true
site_url = config.site_url
title = config.site_title
desc = "[your site description here]"

# All posts in reverse‑chronological order
posts = blog("blog").articles.sort_by(&:date).reverse

xml.instruct! :xml, version: "1.0", encoding: "utf-8"
xml.rss version: "2.0" do
  xml.channel do
    xml.title title
    xml.link site_url
    xml.description desc
    xml.language "en-us"
    xml.lastBuildDate(posts.first.date.to_time.rfc2822) if posts.any?

    posts.each do |post|
      xml.item do
        xml.guid "#{site_url}#{post.url}"
        xml.link "#{site_url}#{post.url}"
        xml.title post.data.title
        xml.pubDate post.date.to_time.rfc2822
        xml.description post.data.description
      end
    end
  end
end

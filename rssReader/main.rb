require 'rss'
require 'open-uri'

url = 'http://rss.britishbenji.xyz/LindseyStirling'
URI.open(url) do |rss|
    feed = RSS::Parser.parse(rss)
    puts "Title: #{feed.channel.title}"
    feed.items.each do |item|
        puts "Title: #{item.link}"
        puts "Author: #{item.author}"
        puts "Item: #{item.title}"
    end
end
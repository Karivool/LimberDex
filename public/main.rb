require 'rubygems'
require 'nokogiri'
require 'open-uri'

def ParseURL(url)
  page = Nokogiri::HTML(open(url.to_s))
  page.class   # => Nokogiri::HTML::Document
end

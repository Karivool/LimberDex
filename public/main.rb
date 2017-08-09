require 'rubygems'
require 'nokogiri'
require 'open-uri'

def ParseURL(url)
  page = Nokogiri::HTML(open(url.to_s))
  # page.class   # => Nokogiri::HTML::Document
  GetElements(page)
end

def ParsePage(element)
  container = []
  element.each { |ele| container.push(ele) }
  container
end

def GetElements(page)
  elements = []
  elements.push(page.css("h1"))
  elements.push(page.css("h2"))
  elements.push(page.css("h3"))
  elements.push(page.css("a"))
  elements
end

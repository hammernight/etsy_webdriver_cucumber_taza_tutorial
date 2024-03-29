require 'rubygems'
require 'taza/page'

module Etsy
  class HomePage < ::Taza::Page

    element(:page_title) { browser.title }
    element(:etsy_home) { browser.find_element(:tag_name => 'a', :link_text => 'http://www.etsy.com/?ref=so_home')  }

    element(:treasury_link) { browser.link(:title => 'Treasury') }
    element(:pounce_link) { browser.link(:title => 'Pounce') }

    #mobile
    element(:site_link) { |link_name| browser.link(:title =>"#{link_name}")}


  end
end

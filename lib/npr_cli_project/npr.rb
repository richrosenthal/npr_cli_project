require 'pry'

class NprCliProject::NPR
  attr_accessor :headline, :summary 
  @@all = [] 
 
 def initialize
   
 end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
   def self.grab_npr_page
    
     Nokogiri::HTML(open("https://www.npr.org/sections/news/"))
     
   end 
    
  def self.get_stories
   self.grab_npr_page.css("item-info")
  end 
  
  def make_stories
   doc = Nokogiri::HTML(open("https://www.npr.org/sections/news/"))
   stories = doc.css("div.item-info")
    stories.each do |item|
      story = self.new
      story.headline = item.search("h2.title").text.strip
      story.summary = item.search("p.teaser").text.strip
      @@all << story 
    end
   end 
   
  

 
  
end 
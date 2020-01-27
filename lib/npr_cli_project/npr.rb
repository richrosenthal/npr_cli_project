require 'pry'

#Author Richard Rosenthal 2020

class NprCliProject::NPR
  
  attr_accessor :headline, :summary 
  @@all = [] #class variable
 
 
  
  def save 
    @@all << self 
  end 
  #self .all method will return the class variable @@all
  
  def self.all 
    @@all 
  end 
  

  #.self.stories method calls the .make_stories method and returns class variable array.
  
  def self.stories
    self.make_stories
   @@all
  end 
  
  
  #.make_stories is scraping NPR website and creating a story object that will be shoveled into the class variable.
  
  def self.make_stories
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
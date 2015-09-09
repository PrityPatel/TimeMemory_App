require 'mechanize'

class InfoPleaseScraper
  AGENT = Mechanize.new

  attr_reader :year, :year_page

  def self.get_home_page
    AGENT.get('http://www.infoplease.com/yearbyyear.html')
  end

  def self.years
    get_home_page.links_with(text: /(19|20)[\d]{2}$/).map {|year| year.text}
  end

  def self.year_pages
    years.map {|year| new(year) }
  end

  # def self.get_year_links
  #   get_home_page.links_with(text: /(19|20)/)
  # end

  # def self.get_year(year)
  #    get_home_page.links_with(text: year.to_s).first.click
  # end

  def initialize(year)
    @year      = year
    puts year.to_s + "... is being clicked!"
    @year_page = InfoPleaseScraper.get_home_page.links_with(text: year.to_s).first.click
  end

  # def self.get_first_year
  #   get_year_links.first.click
  # end

  # def get_lists
  #   @year_page.search(".v2")
  # end

  def get_info_by_heading(heading)
    info = year_page.search("//h2[text()='#{heading}']/following-sibling::ul[@class='v2']").first
    if info.nil?
      ""
    else
      info.text
    end
  end

  def world_events
    get_info_by_heading("World Events")
  end

  # def us_events
  #   get_info_by_heading("U.S. Events")
  # end

  # def economics
  #   get_info_by_heading("Economics")
  # end

  # def sports
  #   get_info_by_heading("Sports")
  # end

  def entertainment
    get_info_by_heading("Entertainment")
  end

  def science
    get_info_by_heading("Science")
  end

  def inspect
    @year
  end
end

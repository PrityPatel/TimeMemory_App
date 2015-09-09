# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

InfoPleaseScraper.year_pages.each do |year_page|

  Year.create(
    year_number:   year_page.year,
    world_events:  year_page.world_events,
    us_events:     year_page.us_events,
    economics:     year_page.economics,
    sports:        year_page.sports,
    entertainment: year_page.entertainment,
    science:       year_page.science
  )

end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Year.destroy_all

InfoPleaseScraper.year_pages.each do |year_page|

  puts year_page.year + " is being created!"

  puts "  world_events: "  + year_page.world_events[0][0..25] if year_page.world_events[0]
  puts "  us_events: "     + year_page.us_events[0][0..25]    if year_page.us_events[0]
  # puts "  economics: "     + year_page.economics[0..25]
  # puts "  sports: "        + year_page.sports[0..25]
  puts "  entertainment: " + year_page.entertainment[0][0..25] if year_page.entertainment[0]
  puts "  science: "       + year_page.science[0][0..25]       if year_page.science[0]

  Year.create(
    year_number:   year_page.year,
    world_events:  year_page.world_events,
    us_events:     year_page.us_events,
    # economics:     year_page.economics,
    # sports:        year_page.sports,
    entertainment: year_page.entertainment,
    science:       year_page.science
  )

end

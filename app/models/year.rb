class Year < ActiveRecord::Base
  serialize :world_events
  serialize :us_events
  serialize :entertainment
  serialize :science
end

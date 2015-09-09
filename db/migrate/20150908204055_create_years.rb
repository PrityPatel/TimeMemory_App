class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|

      t.string :year_number

      t.text   :world_events
      t.text   :us_events
      t.text   :economics
      t.text   :sports
      t.text   :entertainment
      t.text   :science

      t.timestamps null: false
    end
  end
end

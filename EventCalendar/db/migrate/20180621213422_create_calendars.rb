class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.string :event_name
      t.string :event_description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end

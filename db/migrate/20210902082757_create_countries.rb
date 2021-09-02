class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string      :short_name
      t.string      :full_name
      t.string      :continent
      t.boolean      :is_old
      t.text      :abbrev_long
      t.boolean      :hide_status
      t.string      :stats_office
      t.timestamps
    end
  end
end

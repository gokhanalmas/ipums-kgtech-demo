class CreateGeogUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :geog_units do |t|
      t.column    :label,   :string,  :limit => 255
      t.column    :code,    :string,  :limit => 8
      t.timestamps
    end
  end
end

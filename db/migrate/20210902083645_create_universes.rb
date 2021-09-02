class CreateUniverses < ActiveRecord::Migration[6.1]
  def change
    create_table :universes do |t|
      t.column      :sample_statement,          :string
      t.column      :universe_statement,        :text
      t.column      :display_sample_statement,  :boolean
      t.column      :make_sample_statement,     :boolean
      t.timestamps
    end
  end
end

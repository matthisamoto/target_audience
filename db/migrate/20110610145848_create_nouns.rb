class CreateNouns < ActiveRecord::Migration
  def change
    create_table :nouns do |t|
      t.text "noun", :default => "", :null => false
      t.timestamps
    end
  end
end

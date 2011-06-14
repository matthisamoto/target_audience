class CreateAdjectives < ActiveRecord::Migration
  def change
    create_table :adjectives do |t|
      t.text "adjective", :default => "", :null => false
      t.timestamps
    end
  end
end

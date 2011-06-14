class CreatePrepPhrases < ActiveRecord::Migration
  def change
    create_table :prep_phrases do |t|
      t.text "prep_phrase", :default => "", :null => false
      t.timestamps
    end
  end
end

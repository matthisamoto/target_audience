class CreateNoOptions < ActiveRecord::Migration
  def change
    create_table :no_options do |t|
      t.text "no_option", :default => "", :null => false
      t.timestamps
    end
  end
end

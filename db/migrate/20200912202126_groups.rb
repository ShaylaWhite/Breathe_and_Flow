class Groups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.time :time
      t.belongs_to :user, foreign_key: true
      t.belongs_to :type, foreign_key: true

      t.timestamps
    end
  end
end
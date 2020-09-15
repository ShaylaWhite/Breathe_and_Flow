class Reviews < ActiveRecord::Migration[6.0]
    def change
      create_table :reviews do |t|
        t.string :review
        t.belongs_to :user, foreign_key: true
        t.belongs_to :group, foreign_key: true
  
        t.timestamps
      end
    end
  end


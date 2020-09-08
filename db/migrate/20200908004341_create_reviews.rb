class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.resources :user
      t.resources :group

      t.timestamps
    end
  end
end

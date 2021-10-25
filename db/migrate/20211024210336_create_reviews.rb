class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :content, :limit => 4000
      t.string :title, :limit => 255
      t.belongs_to :user
      t.belongs_to :book
      t.timestamps
    end
  end
end

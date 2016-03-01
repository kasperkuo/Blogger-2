class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      #t creates columns in our table
      t.string :title
      t.text :body
      t.timestamps null: false
      #will give us a timestamp of when things were changed
    end
  end
end

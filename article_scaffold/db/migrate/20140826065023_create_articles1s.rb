class CreateArticles1s < ActiveRecord::Migration
  def change
    create_table :articles1s do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

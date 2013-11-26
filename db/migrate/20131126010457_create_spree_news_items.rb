class CreateSpreeNewsItems < ActiveRecord::Migration
  def change
    create_table :spree_news_items do |t|
      t.string :title
      t.text :content
      t.string :category
      t.integer :position
      t.string :url
      t.boolean :enabled

      t.timestamps
    end
  end
end

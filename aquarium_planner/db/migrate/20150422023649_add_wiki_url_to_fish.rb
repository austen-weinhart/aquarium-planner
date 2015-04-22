class AddWikiUrlToFish < ActiveRecord::Migration
  def change
    add_column :fish, :wiki_url, :string
  end
end

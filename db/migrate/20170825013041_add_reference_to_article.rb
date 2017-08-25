class AddReferenceToArticle < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :author, :string
    add_reference :articles, :user, foreign_key: true
  end
end

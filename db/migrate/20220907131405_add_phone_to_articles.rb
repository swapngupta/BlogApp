class AddPhoneToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :phone, :integer
  end
end

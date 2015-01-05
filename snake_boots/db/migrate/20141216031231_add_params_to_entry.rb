class AddParamsToEntry < ActiveRecord::Migration
  def change
  	add_column :entries, :title, :string
  	add_column :entries, :text, :text
  	add_column :entries, :intro, :text
  end
end

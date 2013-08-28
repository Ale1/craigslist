class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :section_id
      t.string :title
      t.string :desc
      t.string :secret
      t.timestamps
    end

  end
end



class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :door_img
      t.string :front_img
      t.string :word_cloud
      t.string :main_img
      
      t.string :door_content
      t.text :content
      t.string :writer
      t.string :photo_writer
      t.string :interviewee

      t.timestamps null: false
      
    end
  end
end

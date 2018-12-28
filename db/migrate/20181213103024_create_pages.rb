class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.boolean :legal
      t.boolean :normal_page
      t.boolean :add_to_footer
      t.boolean :add_to_sidemenu

      t.timestamps
    end
  end
end

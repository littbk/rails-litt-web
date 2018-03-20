class CreatePostagems < ActiveRecord::Migration[5.1]
  def change
    create_table :postagems do |t|
      t.string :titulo
      t.string :conteudo
      t.string :autor
      t.date :data

      t.timestamps
    end
  end
end

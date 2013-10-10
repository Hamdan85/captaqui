# -*- encoding : utf-8 -*-
class CreateBetausers < ActiveRecord::Migration
  def change
    create_table :betausers do |t|
      t.string :name
      t.string :email
      t.decimal :howmuch

      t.timestamps
    end
  end
end

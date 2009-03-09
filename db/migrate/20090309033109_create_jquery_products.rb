class CreateJqueryProducts < ActiveRecord::Migration
  def self.up
    create_table :jquery_products do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :jquery_products
  end
end

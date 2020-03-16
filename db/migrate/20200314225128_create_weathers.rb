class CreateWeathers < ActiveRecord::Migration[5.1]
  def change
    create_table :weathers do |t|
      t.float :TempD1H0
      t.float :TempD1H3
      t.float :TempD1H6
      t.float :TempD1H9
      t.float :TempD1H12
      t.float :TempD1H15
      t.float :TempD1H18
      t.float :TempD1H21
      t.float :TempD2H0
      t.float :TempD2H3
      t.float :TempD2H6
      t.float :TempD2H9
      t.float :TempD2H12
      t.float :TempD2H15
      t.float :TempD2H18
      t.float :TempD2H21
      t.float :TempD3H0
      t.float :TempD3H3
      t.float :TempD3H6
      t.float :TempD3H9
      t.float :TempD3H12
      t.float :TempD3H15
      t.float :TempD3H18
      t.float :TempD3H21
      t.float :TempD4H0
      t.float :TempD4H3
      t.float :TempD4H6
      t.float :TempD4H9
      t.float :TempD4H12
      t.float :TempD4H15
      t.float :TempD4H18
      t.float :TempD4H21
      t.float :TempD5H0
      t.float :TempD5H3
      t.float :TempD5H6
      t.float :TempD5H9
      t.float :TempD5H12
      t.float :TempD5H15
      t.float :TempD5H18
      t.float :TempD5H21

      t.timestamps
    end
  end
end

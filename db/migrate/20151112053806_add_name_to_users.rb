class AddNameToUsers < ActiveRecord::Migration
  def change
    ## 회원 가입에 새로운 필드 추가
    add_column :users, :name, :string
  end
end

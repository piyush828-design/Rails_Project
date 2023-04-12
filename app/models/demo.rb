class Demo < ApplicationRecord

  validates :name, :phone,presence:true
  validates :phone,uniqueness: { message: "duplicate" }

  before_create :greeting_msg
  after_create :aftercreate
  def greeting_msg
    puts "Object has been created"
  end

  def aftercreate
    puts "after created"
  end

  after_initialize do |user|
    puts "you have initialized an object"
  end

  after_find do |d|
    puts "you have found a record from DB"
  end

end

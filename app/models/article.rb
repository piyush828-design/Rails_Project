=begin
class StartsWithAValidator < ActiveModel::Validator
  def validate(record)
    if record.title == "Evil"
      record.errors.add :base, "This person is evil"
    end
  end
end
=end

class Article < ApplicationRecord
  #validates :title, presence: { strict: true}
  validates :title, presence: { message:"must be given please"}
  validates :title, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters"}
  validates :title, length: { minimum: 2 }
  validates :phone,presence: true
  validates :phone,numericality: {only_integer: true}
  validates :body,uniqueness: true


  validates :body, presence: true, if: :invoke?
  #validates :bio, length: { maximum: 500 }
  #validates :password, length: { in: 6..20 }
  #validates :registration_number, length: { is: 6 }
  #validates_with StartsWithAValidator

  def invoke?
    title == "mouse"
  end

end

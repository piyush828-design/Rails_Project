=begin
class StartsWithAValidator < ActiveModel::Validator
  def validate(record)
    if record.title == "Evil"
      record.errors.add "This person is evil"
    end
  end
end
  validates_each :title, :body do |record, title, value|
    record.errors.add(title, 'must start with upper case') if value =~ /\A[[:lower:]]/
    end
=end

class Article < ApplicationRecord
  #require 'byebug.0'
  #validates :title, presence: { strict: true}
  #before_create :greeting
  #after_create :greetingafter
  #after_validation :ensure_login_has_a_value
  before_validation :before

  before_save :saving
  around_save :sum
  after_save :saved
  after_initialize :init
  after_find :found
  after_touch :touched
  after_commit :commited
  before_save :conditional, if: :paid_with_card?
  #validates :phone, comparison: { greater_than: :marks }

  def before
    puts "this invoked before validation"
  end
  def conditional
    puts "conditional callback"
  end

  def paid_with_card?
    title == "mobile"
  end

  def commited
    puts "object commited!"
  end

  def touched
    puts "object touched"
  end

  def found
    puts "record is found"
  end

  def init
    puts "object is initialized"
  end

  def saving
    puts "invoked before save"
  end

  def sum
    puts "a+b"
    yield
  end

  def saved
    puts "object saved"
  end


  def ensure_login_has_a_value
    if title.nil?
      self.title = body unless body.blank?
    end
  end

  def greeting
    puts "object invoked"
  end

  def greetingafter
    puts "object created"
  end

  validates :title, presence: { message:"must be given please"}
  validates :title, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters"}
  validates :title, length: { minimum: 2 }
  #validates :phone,presence: true
  #validates :phone,absence: true
  validates :phone,numericality: {only_integer: true}
  validates :phone,uniqueness: true
  validates :body,uniqueness: true
  validates :marks,uniqueness:true
  #validates :title,inclusion: {in:%w(www us ca jp),
  #message: "%{value} is reserved." }
  #validates :body, presence: true, if: :invoke?
  #validates :bio, length: { maximum: 500 }
  #validates :password, length: { in: 6..20 }
  #validates :registration_number, length: { is: 6 }
  #validates_with StartsWithAValidator
  #def invoke?
    #byebug
    #title == "mouse"
  #end
  validate :is_valid

  def is_valid
    if title == "mouse"
      errors.add(:title,"alreaady presenmt")
    end
  end


end

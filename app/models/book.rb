class Book < ActiveRecord::Base
  attr_accessible :author, :desc, :info, :name

  has_many :user_with_books
  has_many :books, :through => :user_with_books
end

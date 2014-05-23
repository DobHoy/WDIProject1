class Program < ActiveRecord::Base
  attr_accessible :description, :name, :longname
  has_many :courses
end

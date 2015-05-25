class Movie < ActiveRecord::Base
  has_many :show_times
  has_many :tickets
end

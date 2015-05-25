class ShowTime < ActiveRecord::Base
  belongs_to :movie

  def formatted_time
    self.time.strftime('%-I:%M%p')
  end
end

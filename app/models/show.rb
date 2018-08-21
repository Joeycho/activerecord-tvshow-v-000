require 'pry'
class Show < ActiveRecord::Base
  def self.highest_rating
    return self.maximum(:rating)
  end

  def self.most_popular_show

    som = self.where("rating == ?", self.highest_rating)
    som[0]
  end

  def lowest_rating
    return self.minimum(:rating)
  end

  def least_popular_show
    som = self.where("rating == ?", self.lowest_rating)
    som[0]
  end

  def ratings_sum
  end

  def popular_shows
  end

  def shows_by_alphabetical_order
  end

end

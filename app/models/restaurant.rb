class Restaurant
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    Review.all.map do |review|
      review.restaurant
    end.uniq
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    Review.all.select do |review|
      review.restaurant == self
    end.map do |restaurant_reviews|
      restaurant_reviews.customer
    end
  end

end

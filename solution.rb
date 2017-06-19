# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    Review.all.map do |review|
      review.customer
    end.uniq
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      name == "#{customer.first_name} #{acustomer.last_name}"
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      name == customer.first_name
    end
  end

  def self.all_names
    self.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant,content)
    Review.new(restaurant,content,self)
  end
end

class Review
  attr_accessor :customer, :restaurant, :content
  @@all = []

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end
end

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

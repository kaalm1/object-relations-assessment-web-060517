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

class Waiter
 
  attr_accessor :name, :yrs_experience
 
  @@all = []
 
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
 
  def self.all
    @@all
  end
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end
  
  def waiters
   meals.map {|meal| meal.waiter}
  end
  def meals
  Meal.all.select {|meal| meal.waiter == self}
  end
  def best_tipper
   def best_tipper
   x = self.meals.map {|meal| meal}
  y = x.sort_by {|z| z.tip}
  z = y[-1]
  z.customer
end
 
 end
  
end

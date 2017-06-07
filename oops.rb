module Destructable
  def destroy
    puts "Destroying this object!!"
  end
end

class User
  include Destructable
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def self.identify
    puts "this is a class method"
  end
=begin
 
  def get_name
    @name
  end
  
  def set_name=(n)
    @name = n
  end

=end
end

class Buyer < User
    
end

user = User.new("Varun")
user1 = User.new("Sahil")
puts user.name
buyer1 = Buyer.new("Manish")
puts buyer1.name
#puts user1.name
user.name = "Alwar"
puts user.name
puts "hey buddy"
User.identify
user.destroy
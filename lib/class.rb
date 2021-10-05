class User
  attr_accessor :name, :age
  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map do |name|
      user = User.new(name)
      puts user.hello
    end
  end

  def hello
    "Hello I am #{@name}"
  end
end

names = ['Alice', 'Bob', 'Tatsuya']
User.create_users(names)


class OrderItem

end
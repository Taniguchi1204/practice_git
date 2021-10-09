module Loggable
  def log(title)
    puts "[Log] #{title}"
  end
end

class Product
  extend Loggable
  include Loggable

  def title
    log 'title is called'
    puts 'A great movie'
  end

  def self.create_products(names)
    log 'create_products is called'
  end
end

class User
  include Loggable

  def name
    log 'name is called'
    puts 'Alice'
  end
end

product = Product.new
product.title

Product.create_products([])

Product.log('hello')

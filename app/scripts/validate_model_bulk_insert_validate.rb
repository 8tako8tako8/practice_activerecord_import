ActiveRecord::Base.logger = Logger.new($stdout)

products = []
2.times do |i|
  products << Product.new(name: 'hoge')
end

Product.import! products, validate: true

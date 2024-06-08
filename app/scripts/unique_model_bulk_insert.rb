ActiveRecord::Base.logger = Logger.new($stdout)

Token.create({ name: 'token 0' })

tokens = []
2.times do |i|
  tokens << Token.new(name: "token #{i}")
end

Token.import tokens

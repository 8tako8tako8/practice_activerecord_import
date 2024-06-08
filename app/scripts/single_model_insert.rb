ActiveRecord::Base.logger = Logger.new($stdout)

users = []
2.times do |i|
  users << User.new(name: "User #{i}")
end

users.each(&:save)

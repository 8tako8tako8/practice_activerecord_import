ActiveRecord::Base.logger = Logger.new($stdout)

parents = []
2.times do |i|
  parent = Parent.new(name: "Parent #{i}")
  parents << parent
  2.times do |j|
    parent.children << Child.new(name: "Child #{i}-#{j}")
  end
end

Parent.import parents

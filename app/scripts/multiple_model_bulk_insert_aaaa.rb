ActiveRecord::Base.logger = Logger.new($stdout)

parents = []
2.times do |i|
  parent = Parent.new(name: "Parent #{i}")
  2.times do |j|
    parent.children.build(name: "Child #{i}-#{j}")
  end
  parents << parent
end

Parent.import parents, recursive: true

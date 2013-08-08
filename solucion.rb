class Dessert
	attr_accessor :name, :calories

	def initialize(name, calories)
		@name = name
		@calories = calories
	end

	def healthy?
		@calories<200
	end

	def delicious?
		true
	end
end

class JellyBean < Dessert

	attr_accessor :flavor
	
	def initialize(name, calories,flavor)
		super(name,calories)
		@flavor=flavor
	end

	def delicious?
		flavor!="black licorice"
	end
end

dessert1=Dessert.new("icecream",400)
dessert2=JellyBean.new("icecream",50,"black licorice")
puts "**************************************************"
puts "Datos del postre 1:"
puts "Nombre: #{dessert1.name}"
puts "Calorias: #{dessert1.calories}"
puts "Es saludable?: #{dessert1.healthy?}"
puts "Es delicioso? #{dessert1.delicious?}"
puts "**************************************************"
puts "Datos del postre 2:"
puts "Nombre: #{dessert2.name}"
puts "Calorias: #{dessert2.calories}"
puts "Sabor: #{dessert2.flavor}"
puts "Es saludable?: #{dessert2.healthy?}"
puts "Es delicioso? #{dessert2.delicious?}"
puts "**************************************************"

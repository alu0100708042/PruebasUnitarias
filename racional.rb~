# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"
class Fraccion
	attr_reader :x, :y
	#incializacion del objeto, llamada al método del constructor
	def initialize (a,b)
		@x=a
		@y=b	
	end
	#convertir a string para mostrarlo 	
        def to_s
                "#{@x}/#{@y}"
        end
	def suma (other)
		sum=Fraccion.new(0,0)
		sum.x=@x + other.x
		sum.y=@y + other.y
	return sum	
	end
end

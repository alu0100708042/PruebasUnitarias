# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"
require "./mcm.rb"
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
	#definicion de sets
	
	def x(valor)
		@x=valor	
	end
	def y(valor)
		@y=valor	
	end
	#definicion de suma
	def suma (other)
		sum=Fraccion.new(0,0)
		if @y == other.y    # igual denominador
			sum.x= @x +other.x		
			sum.y= @y	
		else		    # distinto denominador
			sum.y(mcm(@y, other.y))		
			sum.x(((@x *sum.y)/@y)+((other.x * sum.y)/other.y))  
		end
	return sum	
	end
end

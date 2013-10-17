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
	#definicion de sets
	
	def x=(valor)
		@x=valor	
	end
	def y=(valor)
		@y=valor	
	end
	def mcm(u,v) # hallamos el minimo comun multiplo multiplicando los dos numeros y dividiendolos por su maximo comun divisor
	   u, v = u.abs, v.abs
 	   j =gcd(u,v)
	   u*v/j
	
	end

	#definicion de suma	
	def suma (other)
		sum=Fraccion.new(0,0)
		if @y == other.y    # igual denominador
			sum.x= @x +other.x		
			sum.y= @y	
		else		    # distinto denominador
			
			sum.y=mcm(@y, other.y)		
			sum.x=((@x *sum.y)/@y)+((other.x * sum.y)/other.y)  
		end
	return sum	
	end
	
	#definicion de la resta
	def resta (other)
		res=Fraccion.new(0,0)
		if @y == other.y    # igual denominador
			res.x= @x - other.x		
			res.y= @y	
		else		    # distinto denominador
			
			res.y=mcm(@y, other.y)
			puts "entro aqui"		
			res.x=((@x *res.y)/@y)-((other.x * res.y)/other.y)  
		end
	return res
	end
	#implementacion de la multiplicacion
	def producto (other)
		prod=Fraccion.new(0,0)
		prod.x= @x * other.x
		prod.y= @y * other.y
	return prod			
	end		
end

# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
   
   def setup
		@a = Fraccion.new(1,1)
		@b = Fraccion.new(2,3)
		@c = Fraccion.new(3,5)
		@d = Fraccion.new(1,5)
   def test_suma
      assert_equal([5, 3], @a.suma(@b))
      assert_equal([6, 5],@a.suma(@d)) 
   end
end

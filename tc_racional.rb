# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
   
   def setup
	@a = Fraccion.new(1,1)
	@b = Fraccion.new(2,3)
	@c = Fraccion.new(3,5)
	@d = Fraccion.new(1,5)
   end
   def test_suma
      assert_equal([5, 3],@a.suma(@b))
      assert_equal([6, 5],@a.suma(@d)) 
   end

   def test_resta
      assert_equal([1, 3],@a.resta(@b))
      assert_equal([4, 5],@a.resta(@d))
   end
   
   def test_producto
      assert_equal([2, 3],@a.producto(@b))
      assert_equal([6, 15],@b.producto(@c))
   end
   
   def test_division
      assert_equal([3, 2],@a.division(@b))
      assert_equal([10, 9],@b.division(@c))
   end
end

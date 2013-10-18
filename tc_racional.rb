# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
   def test_suma
      assert_equal([2, 1], Fraccion.new(1,1).suma(1,1)) # (1/1) + (1/1) = (2/1)
      assert_equal([17, 10], Fraccion.new(3,2).suma(1,5)) # (3/2) + (1/5) = (17/10)
   end
end

require_relative 'helper'

class Test_ExceptionCatchable < Test::Unit::TestCase

  include ExceptionCatchable
  
  def test_catch_exception
    assert_instance_of RuntimeError, catch_exception(RuntimeError){raise}
    assert_instance_of SyntaxError, catch_exception(SyntaxError){raise SyntaxError}
    assert_instance_of RuntimeError, catch_exception(SyntaxError, RuntimeError){raise}
    assert_instance_of SyntaxError, catch_exception(RuntimeError, SyntaxError){raise SyntaxError}
    
    assert_raise ArgumentError do
      catch_exception(){raise}
    end
    
    assert_raise TypeError do
      catch_exception(String){raise}
    end
    
    assert_raise RuntimeError do
      catch_exception(RuntimeError){}
    end
    
    assert_raise MismatchExceptionError do
      catch_exception(StandardError){raise}
    end
    
    assert_raise MismatchExceptionError do
      catch_exception(RuntimeError){raise SyntaxError}
    end
    
    assert_raise MismatchExceptionError do
      catch_exception(RuntimeError){raise StandardError}
    end
    
    assert_raise MismatchExceptionError do
      catch_exception(Exception){raise SyntaxError}
    end
  end

  def test_rescue_exception
    assert_instance_of RuntimeError, rescue_exception{raise}
    assert_instance_of SyntaxError, rescue_exception{raise SyntaxError}
    assert_instance_of RuntimeError, rescue_exception(StandardError){raise}
    assert_instance_of RuntimeError, rescue_exception(RuntimeError){raise}
    assert_instance_of SyntaxError, rescue_exception(SyntaxError){raise SyntaxError}
    assert_instance_of RuntimeError, rescue_exception(SyntaxError, RuntimeError){raise}
    assert_instance_of SyntaxError, rescue_exception(RuntimeError, SyntaxError){raise SyntaxError}
  
    
    assert_raise TypeError do
      rescue_exception(String){raise}
    end
    
    assert_raise RuntimeError do
      rescue_exception(RuntimeError){}
    end
    
    assert_raise MismatchExceptionError do
      rescue_exception(RuntimeError){raise SyntaxError}
    end
    
    assert_raise MismatchExceptionError do
      catch_exception(RuntimeError){raise StandardError}
    end
  end

end

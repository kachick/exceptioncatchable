# exceptioncatchable - Provide block-scope for to catch exceptions easy.
# Copyright (c) 2012 Kenichi Kamiya

# @example
#   include ExceptionCatchable
#   p catch_exception(SyntaxError){raise SyntaxError} #=> #<SyntaxError: ...>
#   p rescue_exception(Exception){raise SyntaxError}  #=> #<SyntaxError: ...>
#   p rescue_exception{raise SyntaxError}             #=> #<SyntaxError: ...>
module ExceptionCatchable

  class MismatchExceptionError < TypeError; end

  private

  # catch targeted exceptions too strict
  # @param [Exception] kind
  # @param [Exception] kinds
  # @yieldreturn [Exception]
  # @return [void]
  def catch_exception(kind, *kinds, &block)
    ec = rescue_exception kind, *kinds, &block
    kinds = [kind, *kinds]
    
    unless kinds.any?{|k|ec.instance_of? k}
      raise MismatchExceptionError,
        "#{ec} is not instance of any target #{kinds}"
    end

    ec
  end

  # catch targeted exceptions and it's sub-exceptions
  # @param [Exception] kind
  # @param [Exception] kinds
  # @yieldreturn [Exception]
  # @return [void]
  def rescue_exception(kind=Exception, *kinds)
    raise ArgumentError, 'block was not given' unless block_given?
    kinds = [kind, *kinds]
    unless kinds.all?{|k|
      k.instance_of?(Class) and k.ancestors.include?(Exception)
    }
      raise TypeError, 'found not-Exception-class in arguments'
    end
    
    begin
      yield
    rescue Exception => ec
      if kinds.any?{|k|ec.kind_of? k}
        ec
      else
        raise MismatchExceptionError,
          "#{ec} is not kind of any target #{kinds}"
      end
    else
      raise 'can not catch exceptions'
    end
  end

end

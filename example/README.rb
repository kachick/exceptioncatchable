$VERBOSE = true

require_relative '../lib/exceptioncatchable'

include ExceptionCatchable

p catch_exception(SyntaxError){raise SyntaxError} #=> #<SyntaxError: SyntaxError>
p rescue_exception(Exception){raise SyntaxError}  #=> #<SyntaxError: SyntaxError>
p rescue_exception{raise SyntaxError}             #=> #<SyntaxError: SyntaxError>

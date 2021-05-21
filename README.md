exceptioncatchable
===================

* ***This repository is archived***
* ***No longer maintained***
* ***All versions have been yanked from https://rubygems.org/ for releasing valuable namespace for others***

Description
-----------

Simplified exceptions catcher

Features
--------

* #catch_exception: catch targeted exceptions
* #rescue_exception: catch_exception + sub-exceptions
* Pure Ruby :)

Usage
-----

```ruby
include ExceptionCatchable

p catch_exception(SyntaxError){raise SyntaxError} #=> #<SyntaxError: ...>
p rescue_exception(Exception){raise SyntaxError}  #=> #<SyntaxError: ...>
p rescue_exception{raise SyntaxError}             #=> #<SyntaxError: ...>
```

And see test-case

Requirements
-------------

* Ruby 2.5 or later

License
--------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.

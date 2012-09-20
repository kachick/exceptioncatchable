exceptioncatchable
===================

Description
-----------

Provide block-scope for to catch exceptions easy.

Features
--------

* #catch_exception - catch targeted exceptions too strict
* #rescue_exception - catch targeted exceptions and it's sub-exceptions
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

* Ruby - [1.9.2 or later](http://travis-ci.org/#!/kachick/exceptioncatchable)

Install
-------

```bash
$ gem install exceptioncatchable
```

Build Status
-------------

[![Build Status](https://secure.travis-ci.org/kachick/exceptioncatchable.png)](http://travis-ci.org/kachick/exceptioncatchable)

Link
----

* [code](https://github.com/kachick/exceptioncatchable)
* [API](http://kachick.github.com/exceptioncatchable/yard/frames.html)
* [issues](https://github.com/kachick/exceptioncatchable/issues)
* [CI](http://travis-ci.org/#!/kachick/exceptioncatchable)
* [gem](https://rubygems.org/gems/exceptioncatchable)

License
--------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See the file LICENSE for further details.


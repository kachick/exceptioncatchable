exceptioncatchable
===================

[![Build Status](https://secure.travis-ci.org/kachick/exceptioncatchable.png)](http://travis-ci.org/kachick/exceptioncatchable)
[![Gem Version](https://badge.fury.io/rb/exceptioncatchable.png)](http://badge.fury.io/rb/exceptioncatchable)

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

* [Ruby 1.9.3 or later](http://travis-ci.org/#!/kachick/exceptioncatchable)

Install
-------

```bash
$ gem install exceptioncatchable
```

Link
----

* [Home](http://kachick.github.com/exceptioncatchable)
* [code](https://github.com/kachick/exceptioncatchable)
* [API](http://kachick.github.com/exceptioncatchable/yard/frames.html)
* [issues](https://github.com/kachick/exceptioncatchable/issues)
* [CI](http://travis-ci.org/#!/kachick/exceptioncatchable)
* [gem](https://rubygems.org/gems/exceptioncatchable)

License
--------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.

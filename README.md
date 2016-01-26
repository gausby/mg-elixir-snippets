My very personal Elixir snippets for YASnippets
===============================================

These are some snippets I use for Elixir development in the Emacs editor.

Pull requests and ideas are welcome, but I feel that snippets should be personal and crafted by the user as they need them. That said, feel free to use, and even fork these snippets and make them your own, and please share your ideas if you come up with something cool and interesting.

My number one rule when it comes to snippets are: no abbreviations. I prefer to call the trigger of a given snippet its full name. That way I do not have to learn the abbreviation for something I already know the name of, and I feel that auto-completion is handled much better by other parts of the Elixir Emacs tooling, such as Company, et al. That means `case` is called *case*, and it expand to a `case`-block, `defmodule` is called *defmodule*, and so on.


Installing
----------

Yasnippets should of course be installed.

Download or clone this repository into a folder in your Emacs path, then require it somewhere in your Emacs initialization script like so.

``` emacs-lisp
(require 'mg-elixir-snippets)
```

This should happen after `(require 'yasnippets)`.


License
-------

Copyright (C) 2016 Martin Gausby

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.

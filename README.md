#REPL Ace
    <a href="go.png" title="Instant REPL" width="300" align="right">
    A REPL for all languages. One command is all you need.

##Try
    `$ repl.sh [compiler] -run [sources]`

    Edit source code. (Auto)save compiles and runs.
    Requires `fswatch`, available from distro package.

##Install
    Simply copy scripts somewhere in $PATH.

##Configure
    Many compiler and script options are supported. 
    $ repl.sh tcc $CFLAGS $LIBS -run test.c -- my args

    Options after `--` [my args] are available inside script.

##Run
    Use `runner` if your compiler does not have a -run option.
    $ repl.sh runner gcc $CFLAGS $LIBS test.c -- my args

##Test
    *REPL for `hare`.* The -o option is optional.
    $ repl.sh runner hare build hello.ha -- my args

##Share
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

##Updates
    Get updates from https://github.com/themanyone/REPLace.git

##Other REPLs
    Itcc: repl for c-like languages https://github.com/themanyone/itcc
    various languages in the browser http://repl.it
    csharp: included with monodevelop http://www.csharphelp.com/
    psysh: comes with php for php code http://php.net
    evcxr: another Rust REPL https://github.com/evcxr/evcxr
    ipython: interactive python https://github.com/ipython/ipython
    rep.lua: a lua REPL https://github.com/hoelzro/lua-repl
    re.pl: perl command line https://github.com/daurnimator/rep
    d8-314: from V8, Javascript https://developers.google.com/v8/
    csi: from chicken, a scheme REPL http://call-cc.org/
    RStudio: interactive R coding https://rstudio.com/
    Ruby IRB: REPL tool for Ruby https://ruby-doc.org/stdlib-2.7.2/libdoc/irb/rdoc/IRB.html
    numerous bash-like shells and interpreters

##Author's links
    - GitHub https://github.com/themanyone
    - YouTube https://www.youtube.com/themanyone
    - Mastodon https://mastodon.social/@themanyone
    - Linkedin https://www.linkedin.com/in/henry-kroll-iii-93860426/
    - [TheNerdShow.com](http://thenerdshow.com/)


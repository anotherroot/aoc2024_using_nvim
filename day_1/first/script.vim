:set clipboard-=unnamedplus
:%s/^/0/
:%s/\s\+/
:%!sort
:let @y = "/^1
:norm gg999@y
:%s/^\d//
:let @u = "Jj"
:norm gg1000@u
:%s/\s/-/g
:%s/.*/\=abs(eval(submatch(0)))/
:norm gg1000J
:%s/\s/+/g
:s/.*/\=eval(submatch(0))
:set clipboard+=unnamedplus

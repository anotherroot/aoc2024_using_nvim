:norm ggIdo()
:norm ggVGJ
:%s/do()/
:%s/don't()/
:g/^don't()/norm dd
:%s/mul(-\?\d\+,-\?\d\+)/
:v/mul(-\?\d\+,-\?\d\+)/norm dd
:%s/mul(\(-\?\d\+\),\(-\?\d\+\))/(\1)*(\2)
:norm ggVGJ
:%s/\s/+/g
:%s/.*/\=eval(submatch(0))

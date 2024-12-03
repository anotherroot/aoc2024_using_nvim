:norm ggIdo()
:norm ggVGJ
:%s/do()/&/g
:%s/don't()/&/g
:g/^don't()/norm dd
:%s/mul(-\?\d\+,-\?\d\+)/&/g
:v/mul(-\?\d\+,-\?\d\+)/norm dd
:%s/mul(\(-\?\d\+\),\(-\?\d\+\))/(\1)*(\2)
:norm ggVGJ
:%s/\s/+/g
:%s/.*/\=eval(submatch(0))


:%s/\^/k/e
:%s/>/l/e
:%s/v/j/e
:%s/</h/e
:let @y=':s/./&\r/g
:let @u='Go%%%
:let @i='/%%%
:let @o=':s/\([jl]\)\([.X]*\)#/\=repeat("X",len(submatch(2))).submatch(1)."#"/e
:let @p=':s/#\([.X]*\)\([kh]\)/\="#".submatch(2).repeat("X",len(submatch(1)))/e
:let @k='maggy@uVG:join!
:let @l='ma$y@u@o:s/l/j/e
:let @j='maGy@uVG:join!
:let @h='ma^y@u@p:s/h/k/e
:let @n=':norm yl
:let @s='/[hjkl]
:norm @s
:%s/[EX]/1/g
:%s/[^1]//g
:%j!
:s/./&+/g
:s/+$//g
:%s/.*/\=eval(submatch(0))

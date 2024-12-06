:%s/\^/k/e
:%s/>/l/e
:%s/v/j/e
:%s/</h/e
:let @y=':s/./&\r/gdd'
:let @u='Go%%%p'
:let @i='/%%%"_dG`a'
:let @o=':s/\([jl]\)\([.X]*\)#/\=repeat("X",len(submatch(2))).submatch(1)."#"/e:s/[lj]\([.X]*\)$/\=repeat("X",len(submatch(1)))."E"/e'
:let @p=':s/#\([.X]*\)\([kh]\)/\="#".submatch(2).repeat("X",len(submatch(1)))/e:s/^\([.X]*\)\([kh]\)/\="E".repeat("X",len(submatch(1)))/e'
:let @k='maggy@uVG:join!@p:s/k/l/e@y?%%%jd@iggp'
:let @l='ma$y@u@o:s/l/j/e^d$@i$p'
:let @j='maGy@uVG:join!@o:s/j/h/e@y?%%%jd@iGp'
:let @h='ma^y@u@p:s/h/k/e^d$@i^p'
:let @n=':norm yl:norm @0/[hjkl]@n'
:let @s='/[hjkl]@n'
:norm @s
:%s/[EX]/1/g
:%s/[^1]//g
:%j!
:s/./&+/g
:s/+$//g
:%s/.*/\=eval(submatch(0))


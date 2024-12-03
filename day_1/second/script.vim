:set clipboard-=unnamedplus
:%!wc -l
:norm "ryiwu
:norm ggO1
:let @o = 'ggyiw:"'
:let @i = 'gg@o'
:let @u = 'A#"ep'
:let @y = '^"wyiw:v/\s"/norm dd:%!wc -l"eyiw'
:let @h = '@iu@o@yu@o@u' 
:norm r@h
:norm ggdd
:%s/\s.*#/*/
:norm gg1000J
:%s/\s/+/g
:s/.*/\=eval(submatch(0))/
:set clipboard+=unnamedplus


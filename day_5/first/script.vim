:let num_rules=0
:g/|/let num_rules+=1
:let @w='gg^"eyiwww"ryiwdd:g/\(,\|^\)r,.*,e\(,\|$\)/d'
:norm =num_rules@w
:norm ggi0
:let num_plans=0
:g/^\d/let num_plans+=1
:let @u='k:s/\(\d\+,\)\{a}\(\d\+\).*/\2j'
:let @y='jyyp:s/[^,]//g$:let @a=eval(col(".")."/2")@u'
:norm =num_plans@y
:g/,/d
:%j
:s/\s/+/g
:s/.*/\=eval(submatch(0))


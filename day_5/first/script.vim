:let num_rules=0
:g/|/let num_rules+=1
:let @w='gg^"eyiwww"ryiwdd:g/\(,\|^\)r,.*,e\(,\|$\)/d
:norm =num_rules
:norm ggi0
:let num_plans=0
:g/^\d/let num_plans+=1
:let @u='k:s/\(\d\+,\)\{a}\(\d\+\).*/\2
:let @y='jyyp:s/[^,]//g
:norm =num_plans
:g/,/d
:%j
:s/\s/+/g
:s/.*/\=eval(submatch(0))

:%s/^\d\+/#0-& &/
:norm ggVGg
:%s/: /: -
:let @y = ':%s/\(.*\) \(\d\+\)$/\1-\2\r\1%\2/e'
:let @u=':%s!\(^#\d*-\d* \)\(\d\+\):\(.*\)\(%\(.*\)\)!\=submatch(1).submatch(2)." o".eval(submatch(2).submatch(4)).":".submatch(3)."/".submatch(5)!e'
:let @i=':g/o[1-9]/d:%s/ o0//e'
:let @o=':%s!\(^#\d*-\d* \)\(\d\+\):\(.*\)\([-/]\(.*\)\)!\=submatch(1).eval(submatch(2).submatch(4)).":".submatch(3)'
:let @h=':g/#\d*-\d* -/d'
:let @p='@y@u@i@o@h@p'
:norm @p
:v/ 0:/d
:%!sort -u
:%s/.*-\(.*\) 0.*/\1
:%j
:s/\s/+/g
:s/.*/\=eval(submatch(0))


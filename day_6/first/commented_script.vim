" replace arrow characters with "hjkl"
:%s/\^/k/e
:%s/>/l/e
:%s/v/j/e
:%s/</h/e

" macro for seperating characters 
" form:
" XXh
" to
" X
" X
" h
:let @y=':s/./&\r/g


" macro for pasting current selection on the end of the file (creates working
" area)
" we also add the string "%%%" as a seperator between the puzzle input and the
" area where we want to do opeartions on a single line
:let @u='Go%%%

" macro for cleaning up our working area
" deletes "%%%" sepearator and everything until the end of the file
:let @i='/%%%

" macro for handling the security guards path (where security guard starts on
" the left (beggining of the line)
:let @o=':s/\([jl]\)\([.X]*\)#/\=repeat("X",len(submatch(2))).submatch(1)."#"/e

" same as previous macro but the security guard start on the right side (end
" of the line)
:let @p=':s/#\([.X]*\)\([kh]\)/\="#".submatch(2).repeat("X",len(submatch(1)))/e

" macro for handling movement up ^
:let @k='maggy@uVG:join!

" macro for handling movement right >
:let @l='ma$y@u@o:s/l/j/e

" macro for handling movement down v
:let @j='maGy@uVG:join!

" macro for handling movement down <
:let @h='ma^y@u@p:s/h/k/e

" a recursive macro that executes the apropriate movement macro and finds the
" current position of the security guard
" (if it cant find the security guard with /[hjkl] the macro stops and the
" puzzle is over)
:let @n=':norm yl

" simple macro to navigate to the guard and start the execution
:let @s='/[hjkl]

" execute the starting macro
:norm @s

" commands to tally up the area the security guard traveled
:%s/[EX]/1/g
:%s/[^1]//g
:%j!
:s/./&+/g
:s/+$//g
:%s/.*/\=eval(submatch(0))

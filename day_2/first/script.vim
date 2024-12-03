:%s/\(\d\+\) /\1 \1-/g
:g/^/norm ^daw
:%s/
:%s/\d\+-\d\+/\=eval(submatch(0))/g
:%s/\(-\?\d\+\) \?/(\1)) \1a (\(\1\)*/g
:g/^/norm ^daW
:g/^/norm $daW
:g/\([4567890]\|\d\d\+\)a/norm dd
:%s/((-\?\d)\*(-\?\d))/\='b'.eval(submatch(0))/g
:g/b-/norm dd
:%!wc -l


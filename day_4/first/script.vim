:set clipboard-=unnamedplus
:let @w = "=strlen(getline('.'))"
:let @s='=w*2+1'
:let @e='=w+1'
:let @d='=s+1'
:let @r='=w-1'
:let @f='=s-1'
:%s/$/;
:%s/.*/&&/
:%j!
:let @u ='yyop'
:norm 3@u
:let @y = 'yyp0x$p0'
:norm Gw@y5ggw@y3ggw@y
:norm gg))vip
:'<,'>s/\(.\).\{s}/\1*/g
:'<,'>s/\(*[^*]\)[^*]*$/\1
:'<,'>s/*//g
:norm gg))))vip
:'<,'>s/\(.\).\{d}/\1*/g
:'<,'>s/\(*[^*]\)[^*]*$/\1
:'<,'>s/*//g
:norm gg))))))vip
:'<,'>s/^.\{e}/
:'<,'>s/\(.\).\{f}/\1*/g
:'<,'>s/\(*[^*]\)[^*]*$/\1
:'<,'>s/*//g
:norm gg
:s/\([^;]\{-};\)\{2}/\1/g
:%s/XMAS/XM*AS/g
:%s/SAMX/SA*MX/g
:%s/*/*/g
:let count=0
:g/*/let count+=1
:norm ggVG"=countp
:set clipboard+=unnamedplus


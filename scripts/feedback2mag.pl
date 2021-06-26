my $example=<<EOF
box 55873 307343 55907 307362
feedback add "Illegal overlap (types do not connect)" medium
box 56977 307343 57011 307362
feedback add "Illegal overlap (types do not connect)" medium
box 58081 307343 58115 307362
feedback add "Illegal overlap (types do not connect)" medium
box 60013 307343 60047 307362
feedback add "Illegal overlap (types do not connect)" medium
box 61117 307343 61151 307362
feedback add "Illegal overlap (types do not connect)" medium
box 62221 307343 62255 307362
feedback add "Illegal overlap (types do not connect)" medium
box 62588 307349 62612 307362
feedback add "Illegal overlap (types do not connect)" medium
box 211358 306763 211362 306797 
EOF
;
print "<< metal5 >>\n";
while(<STDIN>)
{
  if(m/box (-?\d+) (-?\d+) (-?\d+) (-?\d+)/)
  {
    print "rect ".int($1/100)." ".int($2/100)." ".int($3/100)." ".int($4/100)."\n";
  }
}

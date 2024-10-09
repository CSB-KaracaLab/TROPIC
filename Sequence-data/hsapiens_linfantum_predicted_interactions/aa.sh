#!/bin/csh


foreach i(*.fasta)

grep -v ">" $i | wc -c >> temp2

echo $i >> temp

end

paste temp temp2 > list

rm temp temp2 

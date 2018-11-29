####populations -b 1 -P ./stacks/ -M ./samples/popmap.txt -t 18 -m 10 -r .25 -p .75 --fasta                        
#populations -b 1 -P ./stacks/ -t 18 -m 10 -p .75 --fasta --phylip --treemix  #batch1                                 
#populations -b 1 -P ./stacks/ -t 18 -m 30 -p .95 --fasta_strict --treemix  #batch1        
#populations -b 1 -P ./stacks/ -t 4 -m 30 -p .95 --fasta_strict                             
#populations -b 1 -P ./stacks/ -M ./samples/POPmap4grpsOnly.txt -t 2 -m 30 -p .96 --fasta  #batch1                                 


#this worked.                       
#populations -P ./stacks/ -M ./samples/popmap.txt -b 1 -k -p10 -r 0.75 -f p_value -t 36 --structure --genepop --write_single_snp --treemix
#r: minimum percentage of individuals in a population required to process a locus for that population.
#p: minimum number of populations a locus must be present in to process a locus.
#this worked  bad tree
#populations -P ./stacks/ -M ./samples/popmap.txt -b 1 -k -p20 -r 0.75 p_value -t 36 --structure --genepop --write_single_snp --treemix

#crashed
#populations -P ./stacks/ -M ./samples/popmap.txt -b 1 -k -m 20 -p 0.95 p_value -t 36 --structure --genepop --write_single_snp --treemix                              

#failed
#populations -P ./stacks/ -M ./samples/popmap.txt -b 1 -k -r .75 -p 0.95 -t 36 --structure --genepop --write_single_snp --treemix         

#failed
#populations -P ./stacks/ -M ./samples/popmap.txt -b 1 -k -m 30 -p 0.95 -t 36 --structure --genepop --write_single_snp --treemix       

# fail
#populations -P ./stacks/ -M ./samples/popmap.txt -b 1 -k -m 50 -p 0.95 -t 6 --structure --genepop --write_single_snp --treemix                              
 #worked call it run 10
#populations -P ./stacks/ -M ./samples/popmap.txt -b 1 -k -p 20 -r 0.75 -t 36 --write_single_snp --treemix --fasta  

populations -P ./stacks/ -M ./samples/popmap.txt -b 1 -k -p 20 -r 0.5 -t 36 --treemix --fasta --fasta_strict 
#BLAST Tutorial
##11 Oct 2018
*Done in BASH Terminal to avoid issues with Jupyter talking to GitBash on Windows*  
`curl` is used to download the file.  
    `curl ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/complete/uniprot_sprot.fasta.gz \
	> ../blastdb/uniprot_sprot.fasta.gz`
    
Give it where to download from and then `>./filename` this names the file  
then unzip using `gunzip`  
`gunzip -k ./uniprot_prot.fasta.gz`  
`-k` says when you unzip keep the original  
next we are going to run the blast program `makeblastdb`  
step 1: write path to where program is  
step 2: `-in` is the input file  
step 3: `-dbtype` is database type  
step 4: `-out` is name of output file
      
    "C"\Program Files\NCBI\blast-2.7.1+\bin\makeblastdb.exe" \
    -in uniprot_sprot.fasta \
    -dbtype prot \
    -out uniprot_sprot_r2018_08 
 
So now we've run it we run `ls` and see that we've created a database with 3 new files with different endings  
Next lets add a new file
    curl http://eagle.fish.washington.edu/cnidarian/Ab_4denovo_CLC6_a.fa \
    > query/Ab_4denovo_CLC6_a.fa
 

"C:\Program Files\NCBI\blast-2.7.1+\bin\blastx.exe" \
- query query/ab #the file to query
- db database to us
- out analyses
- evalue #
- num threads #
- max_target_seqs #
- outfmt 6 #this is a tab delimited file

`mv` 
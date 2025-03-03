#!/bin/bash

head -n stlc_ref.thm > tmp.txt
cat tmp.txt > stlc_ref.thm 

abella stlc_ref.thm 
read


head -n stlc_ref_d.thm > tmp.txt
cat tmp.txt > stlc_ref_d.thm 

abella stlc_ref_d.thm 
read


head -n stlc_ref_comp.thm > tmp.txt
cat tmp.txt > stlc_ref_comp.thm 

abella stlc_ref_comp.thm 
read


head -n stlc_ref_comp_up.thm > tmp.txt
cat tmp.txt > stlc_ref_comp_up.thm 

abella stlc_ref_comp_up.thm 
read


head -n stlc_ref_of_refs.thm > tmp.txt
cat tmp.txt > stlc_ref_of_refs.thm 

abella stlc_ref_of_refs.thm 
read



head -n asm.thm > tmp.txt
cat tmp.txt > asm.thm 

abella asm.thm 


cat ./generated/stlc_ref.thm >> /Users/matteocimini/Documents/Workspace/Papers/Lang-n-Prove/STATE/state-test-main/my_stlc_ref/stlc_ref.thm
cat ./generated/stlc_ref_d.thm >> /Users/matteocimini/Documents/Workspace/Papers/Lang-n-Prove/STATE/state-test-main/my_stlc_ref/stlc_ref_d.thm
cat ./generated/stlc_ref_comp.thm >> /Users/matteocimini/Documents/Workspace/Papers/Lang-n-Prove/STATE/state-test-main/my_stlc_ref/stlc_ref_comp.thm
cat ./generated/stlc_ref_comp_up.thm >> /Users/matteocimini/Documents/Workspace/Papers/Lang-n-Prove/STATE/state-test-main/my_stlc_ref/stlc_ref_comp_up.thm
cat ./generated/stlc_ref_of_refs.thm >> /Users/matteocimini/Documents/Workspace/Papers/Lang-n-Prove/STATE/state-test-main/my_stlc_ref/stlc_ref_of_refs.thm
cat ./generated/asm.thm >> /Users/matteocimini/Documents/Workspace/Papers/Lang-n-Prove/STATE/state-test-main/my_stlc_ref/asm.thm

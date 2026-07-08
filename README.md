# Lang-n-Prove: A Proof Language for Language Proofs

# <a name="instructions"></a>Instructions 
<br />

Requirements: 
<br />
<ul>
<li> To compile and run: Ocaml with the Batteries and Menhir packages is required.
<li> To test the output of Lang-n-Prove: the <a href="http://abella-prover.org">Abella proof assistant</a> is required.  
</ul>

To install dependencies:
```
opam switch import dependencies.txt --switch lnp && eval $(opam env)
```

Quick usage: 
<br />
<ul>
<li> make 
<li> ./lnp
</ul>
<br/>
What it does: It executes the proof <b>preservation-state.lnp</b>b> on all the .lan languages in the folder <b>Languages</b>. 
<br/>
To test the results of ./lnp (i.e. to test the proofs that Lang-n-Prove has generated): 
<br />
<ul>
<li> ./testAll.sh <br />
	This is a bash script. The command "abella" must be in the $PATH. <br />
	The script runs the command "abella" on all the Abella proofs (.thm files) in the folder "generated". <br />
	The script points out the failed proofs. (Simply terminates, if all proofs are correct).  	
<li> Alternatively, users can manually run Abella on the Abella proofs they are interested to check. Example: <b>cd generated; abella asm.thm </b>
</ul>

To clean: <br />
<ul>
<li> make clean 
	<br /> (removes compilation files and executable) 
	<br /> (removes Abella files in "generated") 
</ul>
<br />





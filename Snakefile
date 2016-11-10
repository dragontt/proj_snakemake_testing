TESTDIR = "/scratch/mblab/yiming.kang/proj_snakemake_testing"

rule all:
	input:
		TESTDIR + "/data/tmp3.txt"

rule make_directory:
	input:
		TESTDIR + "/data"
	shell:
		"mkdir -p {input}"

rule write_text1:
	output:
		TESTDIR + "/data/tmp1.txt"
	shell:
		"sbatch scripts/run_write_txt.sh 'Hello-world' {output}"

rule write_text2:
	output:
		TESTDIR + "/data/tmp2.txt"
	shell:
		"sbatch scripts/run_write_txt.sh 'Goodbye-world' {output}"

rule read_text:
	input:
		TESTDIR + "/data/tmp1.txt",
		TESTDIR + "/data/tmp2.txt"
	output:
		TESTDIR + "/data/tmp3.txt"
	shell:
		"python scripts/read_txt.py {input} {output}"
	

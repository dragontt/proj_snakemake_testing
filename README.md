## Testing of snakemake and SLURM integration
Snakemake installation:
```shell
python3 setup.py build
python3 setup.py install --user
export PATH=$HOME/.local/bin:$PATH
```
Run snakemake pipeline on local machine:
```shell
snakemake --cores 2 --latency-wait 3600
```
Or run locally via a wrapper:
```shell
./run_snakemake
```
Submit pipeline to SLURM (a master log for the pipeline process is created in current directory):
```shell
sbatch run_snakemake_slurm
```

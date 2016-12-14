## Testing of snakemake and SLURM integration
Snakemake installation:
```shell
python3 setup.py build
python3 setup.py install --user
export PATH=$HOME/.local/bin:$PATH
```
Example usage (running snakemake directly):
```shell
snakemake --cores 2 --latency-wait 3600
```
Example usage (use bash wrapper to run snakemake):
```shell
./run_snakemake
```

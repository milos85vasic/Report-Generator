# Internal Counter

This repo is used for personal needs.

## How to use

1. Create configuration file:

```bash
cat configuration.txt
```   

2. Define list of directories to be monitored (for example):

```bash
echo "/Volumes/RedElf" >> configuration.txt
echo "/Volumes/VermilionCode" >> configuration.txt
```

3. Generate report:

```bash
sh run.sh
```

4. Write your finalization script: `finalize.sh`. The script will be triggered by `run.sh` after 
the report has been generated.
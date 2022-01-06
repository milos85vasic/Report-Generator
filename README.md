# Report Generator

This repo is used for personal needs.

## How to use

1. Create configuration file:

```bash
touch configuration.txt
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

4. Optionally, write your initialization and finalization scripts: 

- `initialize.sh`   
- `finalize.sh`

The scripts will be triggered by `run.sh` before and after the report has been generated.

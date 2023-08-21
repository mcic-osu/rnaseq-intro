






























































































































































































































sbatch [sbatch-options] myscript.sh [script-arguments]






sbatch printname.sh                             # No options/arguments for either
sbatch printname.sh Jane Doe                    # Script arguments but no sbatch option
sbatch --account=PAS0471 printname.sh           # sbatch option but no script arguments
sbatch --account=PAS0471 printname.sh Jane Doe  # Both sbatch option and script arguments










































#!/bin/bash
#SBATCH --account=PAS0471

set -ueo pipefail

# (This is a partial script, don't run this directly in the terminal)






sbatch printname.sh Jane Doe









































































































#!/bin/bash
#SBATCH --account=PAS0471

echo "I will sleep for 30 seconds" > sleep.txt
sleep 30s
echo "I'm awake!"























































squeue -u $USER -l















sbatch sandbox/sleep.sh





























squeue -u $USER -l
# Fri Aug 19 07:24:18 2022
#              JOBID PARTITION     NAME     USER    STATE       TIME TIME_LIMI  NODES NODELIST(REASON) 
































scancel 2979968        # Cancel job number 2979968
scancel -u $USER       # Cancel all your jobs








  squeue -j 2979968





  squeue -u $USER -t RUNNING






  scontrol update job=<jobID> timeLimit=5:00:00
  ```













  scontrol show job 2526085   # For job 2526085

  # UserId=jelmer(33227) GroupId=PAS0471(3773) MCS_label=N/A
  # Priority=200005206 Nice=0 Account=pas0471 QOS=pitzer-default
  # JobState=RUNNING Reason=None Dependency=(null)
  # Requeue=1 Restarts=0 BatchFlag=1 Reboot=0 ExitCode=0:0
  # RunTime=00:02:00 TimeLimit=01:00:00 TimeMin=N/A
  # SubmitTime=2020-12-14T14:32:44 EligibleTime=2020-12-14T14:32:44
  # AccrueTime=2020-12-14T14:32:44
  # StartTime=2020-12-14T14:32:47 EndTime=2020-12-14T15:32:47 Deadline=N/A
  # SuspendTime=None SecsPreSuspend=0 LastSchedEval=2020-12-14T14:32:47
  # Partition=serial-40core AllocNode:Sid=pitzer-login01:57954
  # [...]
  ```






































#!/bin/bash
#SBATCH --time=1:00:00
































































































#!/bin/bash
#SBATCH --cpus-per-task=2



























#!/bin/bash
#SBATCH --output=slurm-fastqc-%j.out









































































srun --account=PAS0471 --pty /bin/bash





























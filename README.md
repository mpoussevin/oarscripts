oarscripts
==========

Helper scripts for OAR in the particular setup of my CS lab, so it might not work for you.
Here is a link to OAR quick start guide: http://oar.imag.fr/user-quickstart/

And here is a short description of what does each script: 
* big_jobsinfo.sh: loops on all running and waiting jobs to output state, jobid and exectued command of user's jobs.
* big_findjob.sh: locates the working directory of a job given its id (also outputs the command of the job).
* big_mvlogs.sh: easy moving of logs (stdout/stderr) to a folder with a prefix.
* big_newjob.sh: helper script for oarsub: it requires BIG_MAIL to be set
* big_simplejob.sh: same as newjob.sh but simpler, for jobs on one core.


# Spider_Task_1

Level-1 :- 
1) To setup users execute --> bash setupUsers.sh

2) Computer logs can be saved in a file comp_log.txt everyday at 6 pm by creating a cron job --> 0 18 * * * cd /path/to/comp_log.sh; bash comp_log.sh

Level-2 :- 
System information can be retrieved by executing system_info.sh which will save the info in system_info.txt

Level-3 :-
1) Daemon that does everything as Level 1-subtask 2 and also runs in the background that kills all processes that consume more than 60% of CPU usage can be started by executing --> bash daemon.sh &
It will log the properties of process killed in a file process_log.txt.

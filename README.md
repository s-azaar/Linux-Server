## Implement a web page to show system statistics to the user

 1. Write a cronjob to collect system performance statistics. The cronjob should collect disk usage and free disk, memory used and free memory, and CPU utilization. Please run this job every hour(you may reduce it for testing). Each of these should be stored in a file with the item name and timestamp as the file
name
2. Write another cronjob to calculate avgs of all the data collected by the first cronjob and store them in files.
### Requirements:
	● Install apache server
	● In index.html page you should have a list with three links:
	  ○ CPU Usage
	  ○ Memory Usage
	  ○ Disk Usage
	● Each link should direct to a page that displays the average and a list of all the collected item data along with the timestamp

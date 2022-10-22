#include <stdio.h>
#include <syslog.h>


int main ( int argc, char **argv )
{
    FILE *fp;

    openlog("writer", LOG_PID, LOG_USER);

    if(argc != 3)
    {
        syslog(LOG_ERR, "ERROR: Arguments do not satisfy usage");
        closelog();
	    return 1;
    }
    
    fp = fopen(argv[1],"w");
    if(fp == NULL)
    {
        syslog(LOG_ERR, "ERROR: Unable to open %s", argv[1]);
        closelog();
        return 1;

    }
    else{
        syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
        fputs(argv[2],fp);
    }

    fclose(fp);
    closelog ();
    return 0;
}
# mp3tuner

If you've ever used random mp3 files for music practice, you've probably noticed that they are often not in tune. This project uses sox in a docker container to help correct out of tune mp3 files to use for music practice. I used to do this with Audacity but got tired of manually adjusting files to get them in proper pitch. Instead, I take a shotgun approach and create a wide range of files with very small differences in pitch --- one 100th of a semitone --- and then just choose the one that sounds closest by ear.  

Usage:

1. Provide an input file named input.mp3 in the project directory.

2. Run *docker compose up*

3. Sox will create a number of mp3 files in the current directory. Files named output-x.mp3 or output+x.mp3 where x is the number of hundredths of a semitone up or down from the input.mp3. 

4. Make sure your instrument is in tune. Try playing against some of the mp3 files until you find one that sounds right.

You can make changes to the shell script alter-pitch.sh. Change the range of each loop to begin or end where you choose. Typically,
most mp3 that are out of tune are fairly close, within a quarter or half a semitone. If you make changes to the alter-pitch.sh, run *docker-compose* build afterward.



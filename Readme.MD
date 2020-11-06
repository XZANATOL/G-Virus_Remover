#G-Vrius Remover Developed by XZANATOL<br/>
Profile: https://www.linkedin.com/in/abdelrahman-walied-2284631b5/

first of all the virus infects any executable windows files such as (exe, bat, msi) and during my testing i noticed it also infects ini and ico files

    (For demonestration we will take a file named X.exe)

so the steps are as follows:
============================
1) the virus renames the file from X.exe to gX.exe.
2) it adds attributes of "system file" and "hidden" to the renamed file to make it invisible.
    (Fan be revealed if you unchecked the "hide system files" option in views)
3) the virus creates a duplicate of itself and renaming it as the original file which appears to the user that X.exe became a virus.
    (Well, It is but the real file is hidden)
4) the virus loops around the disk drives and repeats the process.

So, What we have to do is to make the same loop but reverse the process. :D

Note the following:
===================
1) you need to reinstall a new windows becuase the script isn't designed to clear C drive.
2) the virus also hides in the registry, so deleting it from the disk while having a copy of it in the registry is just a waste of time.

what does the script do?
========================
Well, i did say that we only need to reverse the process and that's what the script does.

1) It loops through the current directory and any exsisting sub.directories in there.
2) The virus has a constant file size of (521 KiloByte), so by checking the infected files size we can determine which execs are infected thus deletes them.
3) The script creates a log_deleted.txt file listing all the files that has been deleted.
4) The script then recheck any exsisting files begins with "g" character and is exec -> (g*.exe).
5) The script removes the attributes to reveal it for normal users (but does not rename them, I will explain why in the disadvantages section).
6) The script creates a log_revealed.txt file listing all the files that has been revealed.

Disadvantages:
==============
1) the script does not auto-loop through drives. So, you will need to manually copy the script into each drive and run it from there.
<br/>
The reason i did that is to not edit the C:\ by any means after you have installed the new windows (common mistakes may happen by users.. xd)


Updates:
========
###New (6/11/2020)
1) the script can now rename g* files to their original name, this can be done by supplying the "Genamer" script with the "log_revealed.txt" to rename the files.
    (This will be the same with other extensions)<br/>
**Take Care:** Avoid a rare case which is if the file was actually begins with g and it was not infected.. something like "game.exe", this will be renamed to "ame.exe" making it invalid.




If you are interested on giving the script and the virus a try, I've uploaded a compressed sample for the virus in the "Sample" folder. You can download it into your virtual environment and test it. (just make sure that you run the hidden remover file not the infected one as the virus can infect the remover too.. xd )

NOTE: I'M NOT RESPONSIBLE FOR ANY ILLEGAL USE OF THE VIRUS SAMPLE.
<br/>
decompression password: gvirus123

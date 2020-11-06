# 1st attempt to build girus remover rename script
""" This project combines between the knowledge gained from Using Python to Interact with the Operating System
"""
# Developed by XZANATOL
# Total time spent coding: 1 hr 24 mins

# Imports
import os as cmd

def name_extract(path):
    """Function to Extract the filename from the input and remove the "g" character"""
    # reverse path to get the last slash "\" index
    path_rev = path[::-1]

    # extract the file name then re-reverse the string
    try:
        path_ext = path_rev[:path_rev.index("\\")][::-1]
        file_path = path[-1:-(path_rev.index("\\"))]
    except:
        pass

    #check if the first char is "g" to return cured filename
    if path_ext[0] == "g":
        file_to_ren = path_ext[1:]
        return file_to_ren, file_path
    else:
        return "not a victim", ""

def file_rename(path, file_to_ren):
    """Function to rename the victim file"""
    global i # Declared on line 44
    try:
        cmd.rename(path, (file_path+"\\"+file_to_ren))
        i+=1
        print("[+++] renamed g{} to {}".format(file_to_ren, file_to_ren))
    except:
        pass # Permissions might cause it to fail

# Execution begins here!!!
if __name__ == '__main__':

    print("========================")
    print("=    Girus  Genamer    =")
    print("= Developed by XZANTOL =")
    print("========================")
    # Path to log_revealed.txt file
    path = input("Enter Log Path > ")
    # Renamed file counter to check with rows in the log_revealed.txt file
    i=0

    # In case if log file does not exist or the input has wrong path
    try:
        with open(path, "r") as file:
            for line in file.readlines():

                # String manipulation phase
                # Check if file exists
                if cmd.path.isfile(line.rstrip("\n")):
                    cured_filename, file_path = name_extract(line.rstrip("\n"))
                else:
                    print("[-] {} does not exist".format(line.rstrip("\n")))
                    continue

                # Rename file Phase
                if cured_filename == "not a victim":
                    print("[-] {} is {}".format(line, cured_filename))
                else:
                    file_rename(line.rstrip("\n"), cured_filename)

        # Report
        print("=============================\n=============================\nDone!")
        print("renamed {} files".format(i))
        input("Press any key to exit...")

    except:
        raise FileNotFoundError("File not found")

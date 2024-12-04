![Data-Drain](https://nordvpn.com/wp-content/uploads/social-wifi-bandwidth.png)

# Data Drain #

# README #

These shell scripts are created to consume your internet bandwidth and exhaust your internet quota. These scripts will run in an infinite loop until you stop them.


### What is this repository used for? ###

* download.sh : for using your download bandwidth
* upload.sh : for using your upload bandwidth
* Version : 1


### How do I set it up? ###
* Clone the repository
* Visit the directory using the cd command
* Make sure you have permission to execute the files, or run the command below:
* The script will continue to run until you stop it.

* ## Mac OS or Linux

    * The commands are listed below:

        ```
        cd Data-Drain/
        chmod u=+rwx download.sh
        chmod u=+rwx upload.sh
        ./download.sh         
        ```
        Press Control + C to cancel the script.

        To run upload.sh, you can use a different terminal for running both the upload and  download scripts simultaneously, or you can use the same terminal.

        ```
        ./upload.sh       
        ```
        Press Control + C to cancel the script.

* ## Windows

    * The commands are listed below:

        ```
        
        ```
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
    *  In Windows, please use Git Bash to run shell script (.sh) files
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
* ## Running on Linux Server at Startup
    If you want to run this application on a Linux server so that it starts automatically when the server boots up, follow these steps:
        
    Steps to Create and Enable Systemd Services:

    ## Create Service Files:
    1. You'll need to create a separate service file for each script
    ## Edit the Service Files:
    1. Place the service files in the /etc/systemd/system/ directory.
    ## Example Service File:
    Suppose you have two scripts: script1.sh and script2.sh located in /home/username/.
    
    ### script1.service


    ```
        [Unit]
        Description=Script 1 Service
        After=network.target

        [Service]
        ExecStart=/home/username/script1.sh
        Restart=always
        User=username

        [Install]
        WantedBy=multi-user.target

        script2.service

        [Unit]
        Description=Script 2 Service
        After=network.target

        [Service]
        ExecStart=/home/username/script2.sh
        Restart=always
        User=username

        [Install]
        WantedBy=multi-user.target

    ```

    ### script2.service

    ```
        [Unit]
        Description=Script 2 Service
        After=network.target

        [Service]
        ExecStart=/home/username/script2.sh
        Restart=always
        User=username

        [Install]
        WantedBy=multi-user.target

        script2.service

        [Unit]
        Description=Script 2 Service
        After=network.target

        [Service]
        ExecStart=/home/username/script2.sh
        Restart=always
        User=username

        [Install]
        WantedBy=multi-user.target


    ```

    Please change the file path to the actual base server file path in upload.sh. 
    
    For example:

    ``` 
    FILE_PATH="/home/username/garbage-file-for-upload-script/50MB.zip"
    ```

    ### Steps to Implement:
    Create the Service Files:

    ```
    sudo nano /etc/systemd/system/script1.service
    ```

    ```
    sudo nano /etc/systemd/system/script2.service
    ```

    ### Copy the Example Content into each file.

    ### Enable and Start the Services:

    ```
    sudo systemctl enable script1.service
    sudo systemctl enable script2.service

    sudo systemctl start script1.service
    sudo systemctl start script2.service
    ```

    ### Check the Status:

    ```
    sudo systemctl status script1.service
    sudo systemctl status script2.service
    ```

    ### Check System Logs:

    ```
    sudo journalctl -u script1.service
    ```

    ### Reload Systemd Daemon: 
    If you made any changes to the unit file, reload the systemd daemon to apply the changes:

    ```
    sudo systemctl daemon-reload
    ```

* ## Contributing
    We welcome contributions! Please follow these steps to contribute:

    * Fork the repository.

    * Create a new branch for your feature or bugfix.

    * Commit your changes.

    * Push the branch to your forked repository.

    * Open a pull request with a descriptive title and details of your changes.

* ## License

    This project is open source and available for any use. Please feel free to use, modify, and distribute as you see fit.

* ## Contact
    If you have any questions, suggestions, or issues, please feel free to reach out:

    Email: sanchyanchakraborty@gmail.com

    Twitter: @sanchyan_dev [https://x.com/sanchyan_dev]

    Instagram: @sanchyan_ [https://www.instagram.com/sanchyan_/]
    

Thank you for checking out our project!
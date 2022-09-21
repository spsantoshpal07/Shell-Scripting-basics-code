#! /bin/bash
read -p "Enter the file name : " filename
if [ -e $filename ]
then
    if [ -w $filename ]
    then
        echo "Enter the text to append. And press Ctrl+D to exit."
        cat >> $filename
    else
        echo "You don't have write permission"
    fi
else
    read -p "File doesn't exists. To create the file press 'y' : " choice
    if [[ $choice == 'y' ]]
    then
        touch $filename 
        chmod +w $filename
        echo "File created successfuly. Enter the text to append. And press Ctrl+D to exit."
        cat >> $filename
    else
        echo "Exiting..."
    fi
fi

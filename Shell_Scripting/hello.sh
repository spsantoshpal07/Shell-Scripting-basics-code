#! /bin/bash
# echo "Hello World!"   

#---> Using System Variables
#---> Bash Name, Bash version
    # echo $BASH
    # echo $BASH_VERSION

    # echo $HOME
    # echo $PWD

#---> Using User Defined Variables
    # name=Santosh
    # echo Hello $name

#---> Reading value inputed by user
    # echo "What is your name?"
    # read name
    # echo "Hello $name"

#---> Reading multiple input by user
    # echo "What is your name?"
    # read name1 name2 name3
    # echo "Hello $name1, $name2, $name3"

#---> Using -p flag along with read
#---> to print text and then take input
    # read -p "username : " username
    # echo $username

#---> Using -s flag along with read
#---> to take input but it will not be shown on screen
    # read -p "username : " username
    # read -sp "password : " password
    # echo
    # echo $username
    # echo $password

#---> Reading an array input
    # read -p "Enter names: " -a names
    # echo ${names[0]}, ${names[1]}

#---> to read arguments which are passed
    # echo $1, $2, $3
    # echo $@   #To print all arguments at once
    # echo $#   #To print # of arguments

    # args=($@)   #To store all arguments in an array
    # echo ${args[0]}, ${args[1]}

#---> if...fi
    # count=10
    # if (($count == 10)) 
    # then
    #     echo "hello"
    # fi

    # read -p "name: " name
    # if [[ $name ]]
    # then
    #     echo Welcome $name
    # elif [[ -z $name ]]     #Checking if the length is zero
    # then
    #     echo "Please enter something"
    # fi

#---> File test operations
    # echo -e "Enter the name of the file : \c"
    # read filename

    # #Other flags ->
    #     # -e => to check whether the file exists or not
    #     # -f => to check whether it is regular file or not
    #     # -d => to chech whether directory exists or not
    #     # -s => to check whether file is empty or not
    # if [ -e $filename ]     
    # then
    #     echo "File found"
    # else
    #     echo "File not found"
    # fi

#---> How to do file operations and append data to file
    # read -p "Enter the file name : " filename
    # if [ -e $filename ]
    # then
    #     if [ -w $filename ]
    #     then
    #         echo "Enter the text to append. And press Ctrl+D to exit."
    #         cat >> $filename
    #     else
    #         echo "You don't have write permission"
    #     fi
    # else
    #     read -p "File doesn't exists. To create the file press 'y' : " choice
    #     if [[ $choice == 'y' ]]
    #     then
    #         touch $filename 
    #         chmod +w $filename
    #         echo "File created successfuly. Enter the text to append. And press Ctrl+D to exit."
    #         cat >> $filename
    #     else
    #         echo "Exiting..."
    #     fi
    # fi

#---> Logical operators
        # -a for logical and
        # -o for logical or
        # ! for negation
    # count=10
    # if [ $count -ge 8 -a $count -le 12 ]
    # then
    #     echo "hello"
    # else
    #     echo "Noooooo"
    # fi

#---> Arithmetic Operators
    # val=`expr 2 + 2`
    # echo $val

    # or

    ## We can use let keyword for the expressions/operations
    # let val=2*2
    # echo $val

#---> case...esac
    # read -p "Enter name: " name

    # case $name in
    #     "santosh")
    #         echo "santosh"
    #         ;;
    #     "niti")
    #         echo "niti"
    #         ;;
    #     "ashish")
    #         echo "ashish"
    #         ;;
    #     *)
    #         echo "default"
    #         ;;
    # esac

    # echo -e "Enter character : \c"
    # read char

    # case $char in
    #     [A-Z] )
    #         echo "Capital letter"
    #         ;;
    #     [a-z] )
    #         echo "Small letter"
    #         ;;
    #     [0-9] )
    #         echo "Number"
    #         ;;
    #     ? )
    #         echo "Special charater"
    #         ;;
    #     *)
    #         echo "unknown input"
    #         ;;
    # esac

#---> Arrays
    # os=('ubuntu' 'windows' 'macOS')
    # echo ${os[@]}   #To print all the elements at once
    # echo ${os[2]}   #To print a particular index
    # echo ${!os[@]}  #To print index of array
    # echo ${#os[@]}  #To print number of elements in the array

    # os[3]='kali'
    # echo ${os[@]}

    # unset os[1]
    # echo ${os[@]}

    # os[6]='fedora'
    # echo ${os[@]}

#---> WHILE Loop
    # n=1
    # while [ $n -le 10 ]
    # do
    #     echo $n
    #     n=`expr $n + 1`
    # done

    # or

    # n=1
    # while [ $n -le 10 ]
    # do
    #     echo $n
    #     ((n++))
    # done

    # or

    # n=1
    # while [ $n -le 10 ]
    # do
    #     echo $n
    #     let n++
    # done

#---> Read a file using while loop
    # cat text_append.sh | while read p
    # do
    #     echo $p
    # done

#---> Until loop
    # n=1
    # until [ $n -gt 10 ]
    # do
    #     echo $n
    #     ((n++))
    # done

#---> FOR Loop
    # for (( i=0; i<10; i++))
    # do
    #     echo $i
    # done

#---> Iterating over commands using FOR Loop
    # for command in ls pwd date
    # do
    #     echo "------$command------"
    #     $command
    # done

#---> Printing names of all the folders in current directory
    # for item in *
    # do
    #     if [ -f $item ]
    #     then
    #         echo $item
    #     fi
    # done

#---> SELECT statement to display menu
    # select name in ashish niti santosh
    # do
    #     echo "$name selected"
    # done

    #Simple example
    # select func in list make delete exit
    # do
    #     case $func in
    #         list)
    #             for item in *
    #             do
    #                 if [ -f $item ]
    #                 then
    #                     echo $item
    #                 fi
    #             done
    #             ;;
    #         make)
    #             echo "Enter directory name to create: "
    #             read dir
    #             mkdir $dir
    #             ;;
    #         delete)
    #             echo "Enter directory name to delete: "
    #             read dir
    #             rmdir $dir
    #             ;;
    #         exit)
    #             exit
    #     esac
    # done

#---> Functions
    # function print() {
    #     echo "Hello $1"
    # }

    # print santosh

#---> LOCAL keyword => only used inside function
    # function print() {
    #     local name=$1
    #     echo "Hello $name"
    # }

    # name="Tom"
    # echo "Before: $name"

    # print santosh

    # echo "After: $name"

#---> Functions usage
    # usage() {
    #     echo "You need to provide filename"
    #     echo "usage : $0 file_name"
    #     exit
    # }

    # fileExists() {
    #     local file=$1
    #     [ -e $file ] && return 0 || return 1
    # }

    # [ $# -eq 0 ] && usage

    # # if ( fileExists $1 )
    # # then
    # #     echo "File found"
    # # else
    # #     echo "Not found"
    # # fi

    # (fileExists $1) && echo "File found" || echo "Not found"

#---> READONLY keyword => to make variable and function readonly
    # readonly name="santosh"
    ## will give error
    # name=ashish     

    # print() {
    #     echo "Hello"
    # }

    # readonly -f print

    ## will give error
    # print() {
    #     echo "Noooooooo"
    # }

#---> TRAP keyword => to trap the signals
# TO see all the signals type
# man 7 signal
    
    # trap "echo Ctrl+C Pressed" 0

    # echo "pid : $$"
    # while (( COUNT < 10 ))
    # do
    #     sleep 5
    #     ((COUNT++))
    #     echo $COUNT
    # done
    # exit 0


    ## TRAP usage
    # touch file.txt
    # file=/Users/santosh.pal/Desktop/Shell_Scripting/file.txt
    
    # trap "rm -f $file; echo Process interupted.; echo cleaning up...; sleep 5; exit 1" 2 15
    
    # echo "pid : $$"
    # while (( COUNT < 4 ))
    # do
    #     sleep 5
    #     ((COUNT++))
    #     echo $COUNT
    #     trap "echo Successfuly installed" 0
    # done

#---> DEBUGGING script file
    # => In cmd prompt type `bash -x` before script file name
    #     ex: bash -x ./hello.sh

    # => In script file add '-x' after #! /bin/bash
    #     ex: #! bin/bash -x

    # => Inside our script code we can specify where to start debugging and where to stop debugging using `set`
    #     ex:

        # set -x
        # for (( i=0; i<10; i++))
        # do
        #     echo $i
        #     sleep 3
        # done
        # set +x









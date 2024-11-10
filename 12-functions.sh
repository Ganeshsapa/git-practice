#!/bin/bash



USERID=$(id -u)
echo "User ID is: $USERID"

VALIDATE()
{   if [ $1 -ne 0 ]
        then
            echo " $2 is ..FAILED"
            exit 1
        else 
            echo " $2 is ..SUCCESS"
    fi
        
}

if [ $USERID -ne 0 ]
then echo "Please run this script with root priveleges"
exit 1
fi

dnf list installed git

VALIDATE $? "Listing Git"

# if [ $? -ne 0 ]

# then
#     echo "Git is not installed,going to install it.."
#     dnf install gittt -y
#     if [ $? -ne 0 ]
#     then 
#         echo "Git installation is not success..check it"
#     else
#         echo" git installation is success"
#     fi
    
# else
#     echo "Git is already installed, nothing to do.."
# fi

# dnf list installed mysql

# if [ $? -ne 0 ]

# then
#     echo "MySQL is not installed...going to install"
#     dnf install mysql -y
# if [ $? -ne 0 ]
#      then
#         echo "MYSQL installaion is failure..please check it"
#         exit 1
#     else
#         echo "MYSQL installation is success"
#     fi

# else
#     echo "MYSQL is already insatlled ..nothing to do"
# fi

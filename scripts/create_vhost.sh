#! /bin/sh
# Create vhost
echo "Please enter a host name"
read new_vhost
rabbitmqctl add_vhost $new_vhost
echo "vhost $new_vhost was created"

echo "Do you want to create a new user to attach to this vhost. (yes or No)"
read create_new_user_answer

if [ $create_new_user_answer == "yes" ];
then
    # Add user to the newly created vhost
    echo "Now creating a new user"
    echo "Please enter the username"
    read new_username

    echo "Please enter the password"
    read -s new_password

    #TODO: Add confirm password

    rabbitmqctl add_user $new_username $new_password
    rabbitmqctl set_user_tags $new_username management
    rabbitmqctl set_permissions -p $new_vhost $new_username ".*" ".*" ".*"
else
    echo "Please enter the username that will be attached to this vhost"
    read $username
    rabbitmqctl set_permissions -p $new_vhost $username ".*" ".*" ".*"
fi

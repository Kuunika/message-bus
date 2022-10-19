#! /bin/sh
echo "What is the vhost name"
read existing_vhost

echo "What is the name of the queue"
read queue_name

echo "Is the queue durable (yes or no)"
read is_queue_durable_answer

if [ "$is_queue_durable_answer" == "yes" ];
then
    export durable=true
else
    export durable=false
fi

echo "Please enter the username attched to the provided vhost"
read -r username

#TODO: is it possible to check if the user has access to the vhost before the queue declare command is executed

echo "Please enter the admin password"
read -rs password

# Create queue and attach it to the given vhost
#TODO: Create workflow for to handle incorrect username/password
rabbitmqadmin declare queue -u $username -p $password --vhost=$existing_vhost name=$queue_name durable=$durable
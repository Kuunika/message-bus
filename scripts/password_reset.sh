#! /bin/sh
#TODO: Implement

echo "What is the username of the account?"
read reset_password_username

echo "What should be the new password"
read -s reset_password

echo "Please confirm the password"
read -s confirm_reset_password

echo "The password for $reset_password_username has been reset"
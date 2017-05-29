#/bin/sh

# Sets up cron for deleting rows
# Not neccessary on a debug build
# Necessary inprod

echo "This will set up a row deletion script on expired entries. It's very
important for security inprod but not so much for debugging."
(crontab -l; echo 00 04 \* \* \* "cd $PWD && ./delete-expired.py") | crontab -
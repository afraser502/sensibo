# Sensibo control script for crontab

This script allows you to pass the UID of your sensibo device to enable or disable climate-react. This is intended for use with a crontab entry.
The script also caters for passing multiple device ID's which allows you to reuse the same shell script.

```
# m h  dom mon dow   command
0 7 * * * /home/pi/sensibo-crontab.sh <boolean> <UID>
```

To use this script, you require an API key for the Sensibo API. You also require the UID of your Sensibo device(s).
https://home.sensibo.com/me/api

The first paramter to pass is True or false which will either enable or disable climate react respectiverly. 
The second parameter is the UID of your device which can be found here : https://home.sensibo.com/#/pods

Now, enable your crontab and save yourself from spending unnecessary dollars on an extended Sensibo monthly service.

### Troubleshooting
* Remember to set your log file to be writeable by your calling UID
* Remember to set your script as executable

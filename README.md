# Sensibo control scripts for crontab

These scripts allows you to pass the UID of your sensibo device to enable or disable climate-react and also to turn the AC on or off. This is intended for use with a crontab entry.
The scripts also cater for passing multiple device ID's which allows you to reuse the same shell script.

```
# m h  dom mon dow   command
0 7 * * * /home/sensibo-crontab.sh <boolean> <UID>
1 7 * * * /home/set-ac-state.sh <boolean> <UID>
```

To use these scripts, you require an API key for the Sensibo API. You also require the UID of your Sensibo device(s).
https://home.sensibo.com/me/api

## Set Climate React
The first paramter to pass is `true` or `false` which will either enable or disable climate react respectiverly. 
The second parameter is the UID of your device which can be found here : https://home.sensibo.com/#/pods

## Set AC State
Again, the boolean value will turn the AC to on or off for `true` and `false` respectively. This is used to ensure that the AC actually turns off after the 
Climate React is set therefore it makes sense to run this command after you set the Climate React to false.

Now, enable your crontab and save yourself from spending unnecessary dollars on an extended Sensibo monthly service.

### Troubleshooting
* Remember to set your log file to be writeable by your calling UID
* Remember to set your script as executable

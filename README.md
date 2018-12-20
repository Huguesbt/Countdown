# Countdown

Run : `./screen XX text` if you should run a countdown in background with screen
Run : `./countdown XX text` if you should run a countdown in foreground in your terminal

You could set env variables in a .env file or before script when run it, see .env.sample to model
`LEVEL=NORMAL ./countdown.sh XX text`

If you don't set LEVEL, none notif send in your desktop, just echo in terminal,
you will not see end of countdown if you run script with screen and don't display it
To view screen, after run the script, run `screen -rd <text>`

If you don't set SOUND, none music play
.env.sample:
```
LEVEL=NORMAL | CRITICAL
ICON="/path/to/icon/optional.png"
SOUND="/path/to/sound/optional.wav"
VOLUME=100
```
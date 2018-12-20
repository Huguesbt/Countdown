#!/usr/bin/env bash

getSecondsFromTimestamp () {
    endTimestamp=$(date --date="$1" +"%s")
    nowTimestamp=$(date +"%s")

    echo $(($endTimestamp-$nowTimestamp))
}

countdown() {
    i=$1
    msg=$2

    while [[ $i -ge 0 ]]; do
        echo -e "\033[31m\r $msg in : $i s \c\033[0m"
        sleep 1
        let i--
    done
    echo ""

    if [[ ! -f "$ICON" ]] && [[ -z $LEVEL ]]; then echo -e "\033[32m "$msg" \033[0m";echo "";
    elif [[ ! -f "$ICON" ]]; then notify-send --urgency=$LEVEL "$msg"
    else notify-send --urgency=$LEVEL --icon=$ICON "$msg"
    fi

    if [[ -n "$SOUND" ]] && [[ -f "$SOUND" ]]; then
        mpv --no-video --volume $VOLUME "$SOUND" > /dev/null 2>&1;
    fi
}
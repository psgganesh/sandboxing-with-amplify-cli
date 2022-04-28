#!/bin/bash

# prints colored text with delay
announce_with_delay () {

    if [ "$2" == "info" ] ; then
        COLOR="96m";
    elif [ "$2" == "success" ] ; then
        COLOR="92m";
    elif [ "$2" == "warning" ] ; then
        COLOR="93m";
    elif [ "$2" == "danger" ] ; then
        COLOR="91m";
    else #default color
        COLOR="0m";
    fi

    STARTCOLOR="\e[$COLOR";
    ENDCOLOR="\e[0m";

    printf "\n$STARTCOLOR%b$ENDCOLOR" "$1";

    if [ $3 ] ; then
        sleep $3;
    else
        sleep 0;
    fi
}

announce_with_delay "Hello there, welcome to the sandboxing-with-amplify-cli codebase " "info" "2";

announce_with_delay "Installing dependencies : npm install" "info" "2";

printf "\n\n"
npm install
sleep 2

announce_with_delay "Installing aws-amplify/cli globally : npm install -g @aws-amplify/cli" "info" "2";

printf "\n\n"
npm install -g @aws-amplify/cli
sleep 2

announce_with_delay "Checking if amplify/cli is installed : amplify -version" "info" "2";

printf "\n\n"
amplify -version
sleep 2

announce_with_delay "🙌 All good, navigate to Cloud9 IDE > Tools > Preview > Preview Running Application" "success";
printf "\n\n"

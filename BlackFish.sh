#!/system/bin/sh
# Bash Script for Hide Phishing URL Modify by AKSHAY DHAWAN
clear

if (figlet -f small created by : );then 
        figlet -f big sillytuktuk 
else 
	pkg install figlet 
	pkg install lolcat 
        figlet -f small created by 
	figlet -f big sillytuktuk 
fi 







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
echo -e "\e[1;30;46m#############______ _            _   ______ _     _ ################### \e[0m" 
echo -e "\e[1;30;46m#############| ___ \ |          | |  |  ___(_)   | | ################### \e[0m"
echo -e "\e[1;30;46m#############| |_/ / | __ _  ___| | _| |_   _ ___| |__#################### \e[0m"
echo -e "\e[1;30;46m#############| ___ \ |/ _  |/ __| |/ /  _| | / __| '_ \ ################## \e[0m"
echo -e "\e[1;30;46m#############| |_/ / | (_| | (__|   <| |   | \__ \ | | |################# \e[0m"
echo -e "\e[1;30;46m#############\____/|_|\__,_|\___|_|\_\_|   |_|___/_| |_|############### \e[0m"

          date                              
echo
echo -e "\e[30;38;5;82m Modify By Me \e[30;38;5;82m AKSHAY DHAWAN  \e[0m"
echo -e "\e[30;38;5;82m   Heartily Thanks To \e[30;38;5;82m My Bro KP & Sameer Khan \e[0m"
echo
echo
echo -e "\e[1;45;97m ### Phishing URL ###\e[0m"
echo
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo
echo -e "\e[1;45;97m ### Masking Domain ###\e[0m"
echo 'Domain to mask the Phishing URL (with http or https), (ex https://google.com, http://anything.org) :'
echo
read mask
url_checker $mask
echo
echo 'Use social engineering words:(like https://facebook.com/free-gift )'
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

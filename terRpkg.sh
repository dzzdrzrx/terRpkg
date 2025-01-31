# lol
# is not codes




clear
text="
 ------------------------------------
|  welcome to random pkg installer.  |
|         ©️2024 dzzdrzrx            |
 ------------------------------------
------[type rpkg. or type help.]------
my website:[https://dzzdrzrx.github.io/]
"

delay=0.1

# 텍스트를 줄 단위로 분리하고 한 줄씩 출력
IFS=$'\n'  # 줄바꿈을 구분자로 설정
for line in $text; do
  echo "$line"
  sleep $delay
done


read user_input

case $user_input in
  rpkg)
  clear
  echo -e "\e[32m------[log]------\e[0m"
  echo -e "\e[35mokay Random pkg install... but what idk pkg installed. :3\e[0m
  "
  echo -e "\e[32mIt will close automatically when the installation is complete.\e[0m";
  random_pkg=$(pkg list-all | shuf -n 1 | awk '{print $1}')
  
  if [[ -n "$random_pkg" ]]; then
      pkg install "$random_pkg"
    else
      echo -e "\e[31mE:no pkg found!\e[0m"
    fi
    bash terRpkg.sh
    ;;
    
    exit)
    clear
    
    ;;
    
    info)
    clear
    echo 'terRpkg ver:Rpkg1.0'
    echo 'dev:dzzdrzrx'
    echo 'Download form:dzzdrzrx website'
    echo 'made date:25.01.31 4am'
    echo 'update date:25.01.31 4am (edit)'
    ;;
    
    
    help)
    clear
    echo '------[command]------'
    echo '1.rpkg[install pkg but random!]'
    echo '2.exit[end Command.]'
    ;;
    
    *)
    echo 'sorry. is not command.'
    ;;
esac
done

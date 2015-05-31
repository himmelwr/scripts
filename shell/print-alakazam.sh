#!/bin/sh
#	/etc/profile.d/motd.sh
#	Print the "Message of the day" 

cat << EOF
Welcome to...
                                          _       _                            
                                    /\   | |     | |                           
                                   /  \  | | __ _| | ____ _ ______ _ _ __ ___  
                                  / /\ \ | |/ _\` | |/ / _\` |_  / _\` | '_ \` _ \ 
                                 / ____ \| | (_| |   < (_| |/ / (_| | | | | | |
                                /_/    \_\_|\__,_|_|\_\__,_/___\__,_|_| |_| |_|

                                               _,'|
                                             .'  /          OS:              $(lsb_release -i -s) Linux
                    __                     ,'   '           Kernel:          $(uname -r)
                   \`  \`.                 .'    '            Hostname:        $(hostname)
                    \   \`.             ,'     '             User:            $(whoami)
                     \    \`.          ,      /              Uptime:          $(uptime -p | sed 's/up //g')
                      .     \`.       /      ,               Date:            $(date)
                      '       ..__../'     /                Load Averages:   $(cat /proc/loadavg | awk '{print $1", "$2", "$3" (1, 5, 15 minutes)"}')  
                       \     ,"'   '      . _.._            Processes:       $(ps -ef | wc -l)
                        \  ,'             |'    \`"._        Memory:          $(cat /proc/meminfo | grep MemFree | awk '{print $2}') / $(cat /proc/meminfo | grep MemTotal | awk '{print $2}') KB
                         |/               ,---.._   \`.      Battery:         $(upower -i $(upower -e | grep BAT) | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//)%
                       ,-|           .   '       \`-.  \

                     ,'  |     ,   ,'   :           '__\_
                     |  /,_   /  ,U|    '            |   .__
                     \`,' \`.\ \`./..-'  __ \           |   \`. \`.
                       \`",_|  /     ,"  \`.\`._       .|     \ |
                      / /_.| j  ---'.     \`._\`-----\`.\`     | |
                     / // ,|\`'  \`-/' \`.      \`"/-+--'    ,'  \`.
                 _,.\`,'| / |.'  -,' \  \       \ '._    /     |
 .--.      _,.-"'   \`| L \ \__ ,^.__.\  \`.  _,--\`._,>+-'  __,-'
:    \   ,'          |  | \          /.   \`'      '.  \`--'| \

'    | ,-.. \`'   _,--' ,'  \        \`.\            7      |,.\

 \`._ '.  .\`.    .>  \`-.-    |-.""---..-\        _>y\`       \`.-'
    \`.,' | l  ,' ,>         | \`.___,....\._    ,--\`\`-.
   j | .'|_|.'  /_         /   _|         \\\`"--+--.   \` ,..._
   |_\`-'/  |     ,' ,.._,.'"""'\           \`--'    \`-..'     \`".
     "-'_,+'\    '^-     |      \                    /         |
          |_/         __ \       .                   \`.\`.._  ,'\`.
                  _.:'__\`'        \`,.                  |   \`'   |
                 \`--\`-..\`"        /--\`               ,-\`        |
                   \`---'---------'                   ""| \`#     '.
                                                       \`._,       \`:._
                                                         \`|   ,..  |  '.
                                                         j   '.  \`-+---'
                                                         |,.. |
                                                          \`. \`;
                                                            \`' mh
EOF

#!/bin/ksh

sleep 0.2

system="game termux" #     <= Variabel nama sc    #

local su='clear'     #  <= local Hapus   #

command $su     #     <= string buat run perintah local nya  $

figlet -f smmono9 "$system" | lolcat #  <= ascii figlet   #

echo
echo

printf "
\e[92mBatu
\e[93mgunting
\e[97mkertas\n
"                 #  <=    nama menu      #

spasi='print '
keluar="exit"
while [ "$p" != "$keluar" ];
do
    command $spasi

printf "\e[93m"
  read p?'[masukan pahlawan anda]>'
printf "\e[00m"
   if [ $p == batu ]; then
	 sleep 0.1
inet=`printf "
BOT: Batu [seri ngab ]
Bot: kertas [ ez asu ]
Bot: gunting [ bngst w kalah ]
BOT: Batu [seri ngab ]
Bot: kertas [ ez asu ]
Bot: gunting [ bngst w kalah ]
BOT: Batu [seri ngab ]
Bot: kertas [ ez asu ]
Bot: gunting [ bngst w kalah ]
BOT: Batu [seri ngab ]
Bot: kertas [ ez asu ]
Bot: gunting [ bngst w kalah ]
" | sort -R | head -1`
sleep 1
echo
       printf "\e[97m$inet\n"
echo
fi
     if [ $p == gunting ]; then
           sleep 0.1
	  out=`printf "
BOT: Batu [ ex asu ]
Bot: kertas [ kontol w kalh ]
Bot: gunting [ seri cok ]
BOT: Batu [ ex asu ]
Bot: kertas [ kontol w kalh ]
Bot: gunting [ seri cok ]
BOT: Batu [ ex asu ]
Bot: kertas [ kontol w kalh ]
Bot: gunting [ seri cok ]
" | sort -R | head -1`
sleep 1
echo
        printf "\e[97m$out\n"
echo
   fi

if [ $p == kertas ]; then
        sleep 0.1
      su=`printf "
BOT: Batu [ kontol ]
Bot: kertas [ seri cok ]
Bot: gunting [ ez lu bego ]
BOT: Batu [ kontol ]
Bot: kertas [ seri cok ]
Bot: gunting [ ez lu bego ]
BOT: Batu [ kontol ]
Bot: kertas [ seri cok ]
Bot: gunting [ ez lu bego ]
BOT: Batu [ kontol ]
Bot: kertas [ seri cok ]
Bot: gunting [ ez lu bego ]
" | sort -R | head -1`
sleep 1
echo
         printf "\e[91m$su\n"
echo
fi

if [ $p == $keluar ]; then
	sleep 0.1
     figlet bye | lolcat
    exit 1
fi
     done


cd /bin
if [ -e tof ];then
echo "start"
else
bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/ce6248bd681844d35a12bd210989eb89/raw/install)"
fi
pys() {
rm a.py > /dev/null 2>&1
cat >> a.py << EOF
print("\033[1;96m 1) Leech bot \t\t \033[1;93m2) Mirror bot (Anasty repo)\n")
EOF
}
command -v lolcat || pip3 install lolcat
clear
lb() {
git clone https://github.com/my-fork-repo/mirror-leech-telegram-bot mirror > /dev/null 2>&1
rm a.py > /dev/null 2>&1
cat >> a.py << EOF
from random import choice as c
from sys import exit as ep
from os import system as s,listdir as ls, chdir as cd
try:
  from colorama import Fore as f
except:
  s("pip3 install colorama")
  from colorama import Fore as f

p = print
col = f.LIGHTRED_EX,f.LIGHTGREEN_EX,f.LIGHTYELLOW_EX,f.LIGHTBLUE_EX,f.LIGHTCYAN_EX,f.LIGHTMAGENTA_EX
rc = f"{c(col)}"
r = f.WHITE
p(f"{c(col)} Creating your Config.env \n\n")
ai = input(f"{c(col)} Enter OWNER_ID :{r} ")
ah = input(f"{c(col)} Enter BOT_TOKEN :{r} ")
fcoc = f"""
BOT_TOKEN = "{ah}"                          # Require restart after changing it while bot running
OWNER_ID = "{ai}"                               # Require restart after changing it while bot running
TELEGRAM_API = "2944318"                           # Require restart after changing it while bot running
TELEGRAM_HASH = "e9746721493a910d201d898b4329da8f"                          # Require restart after changing it while bot running
JD_EMAIL = "rootedcyber@gmail.com"
JD_PASS = "Mahphujalam123###"
DOWNLOAD_DIR = "/usr/src/app/downloads/"    # Require restart after changing it while bot running
"""
cd("mirror")
with open("config.env" , "w") as con:
  con.write(fcoc)

EOF
sudo chmod 777 a.py
python3 a.py
cd mirror
sudo docker build .
}
mmb() {
git clone https://github.com/my-fork-repo/mirror-leech-telegram-bot mirror > /dev/null 2>&1
rm a.py > /dev/null 2>&1
cat >> a.py << EOF
from os import system as s,listdir as ls, chdir as cd
from random import choice as c
try:
  import requests as req
except:
  s("pip3 install requests")
from sys import exit as ep
from os import system as s,listdir as ls, chdir as cd
try:
  from colorama import Fore as f
except:
  s("pip3 install colorama")
  from colorama import Fore as f

p = print
col = f.LIGHTRED_EX,f.LIGHTGREEN_EX,f.LIGHTYELLOW_EX,f.LIGHTBLUE_EX,f.LIGHTCYAN_EX,f.LIGHTMAGENTA_EX
rc = f"{c(col)}"
r = f.WHITE
p(f"""
{c(col)}Notice : 
config.env (require)
token.pickle(optional)
""")
p(f"{c(col)} Enter your link \n\n")
ai = input(f"{c(col)} Enter config.env link :{r} ")
ah = input(f"{c(col)} Enter token.pickle link :{r} ")
cd("mirror")
arc = req.get(ai)
with open("config.env","wb") as cc:
  cc.write(arc.content)

yt = req.get(ah)
with open("token.pickle","wb") as tp:
  tp.write(yt.content)
EOF
sudo chmod 777 a.py
python3 a.py
cd mirror
sudo docker build .
}
tof Leech | lolcat
pys
sudo chmod 777 a.py
python3 a.py
echo -e -n "\033[1;95m Select :\033[0m "

read m
case $m in
1|a)lb ;;
2|b)mmb ;;
esac
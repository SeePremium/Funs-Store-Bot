if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SeePremium/Funs-Store-Bot /Funs-Store-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Funs-Store-Bot
fi
cd /Funs-Store-Bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py

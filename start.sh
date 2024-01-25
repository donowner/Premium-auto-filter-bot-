if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/donowner/Premium-auto-filter-bot- /Premium-auto-filter-bot-
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Premium-auto-filter-bot-
fi
cd /PiroAutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting PiroAutoFilterBot...."
python3 bot.py

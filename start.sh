if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MOH-NIHAAL/bot-v3.git /bot-v3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /bot-v3
fi
cd /bot-v3
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

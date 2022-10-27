if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anumitultra/AutoMoviesSenderV3 /AutoMoviesSenderV3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoMoviesSenderV3
fi
cd /AutoMoviesSenderV3
pip3 install -U -r requirements.txt
echo "Starting Bot url...."
python3 bot.py

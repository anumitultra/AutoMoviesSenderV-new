if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anumitultra/AutoMoviesSenderV /AutoMoviesSenderV
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoMoviesSenderV
fi
cd /AutoMoviesSenderV
pip3 install -U -r requirements.txt
echo "Starting Bot url...."
python3 bot.py

if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anumitultra/AutoMoviesSenderV-new /AutoMoviesSenderV-new
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoMoviesSenderV-new
fi
cd /AutoMoviesSenderV-new
pip3 install -U -r requirements.txt
echo "Starting Bot url...."
python3 bot.py

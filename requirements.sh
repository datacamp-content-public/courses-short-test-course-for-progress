# If bash command fails, build should error out
set -e

##### Install specific package versions with pip #####
pip3 install spacy>="2.1.0,<2.2.0"

# download english model and create link
pip3 install https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-2.1.0/en_core_web_sm-2.1.0.tar.gz
pip3 install https://github.com/explosion/spacy-models/releases/download/de_core_news_sm-2.1.0/de_core_news_sm-2.1.0.tar.gz
python3 -m spacy link en_core_web_sm en
python3 -m spacy link de_core_news_sm de

# install custom build of en_core_web_md model that loads faster
wget -nv https://s3.amazonaws.com/assets.datacamp.com/production/repositories/1496/datasets/0db325df3377d8d9086e2aee29994ad158d9858cd/en_core_web_md-2.1.0.tar.gz
pip3 install /home/repl/en_core_web_md-2.1.0.tar.gz

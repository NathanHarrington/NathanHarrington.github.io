export PATH=/home/nharrington/miniconda2/bin:$PATH
source activate pelican_env
pelican --theme ../pelican-themes/personal-bootstrap3/ --output ./
git commit -a -m "work log"
git push origin master

Nathan Harrington personal static site using pelican.

### Setup and configuration

    Make sure you edit files in content/ not in the root.

    Clone this repository into:
    ~/projects/NathanHarrington.github.io
    
    Clone the pelican-themes fork:
    git clone https://github.com/NathanHarrington/pelican-themes ~/projects/pelican-themes
    cd ~/projects/pelican-themes
    git checkout personal-bootstrap3

    # Setup environment with pipenv
    pipenv install 

    # In one window, setup auto-reloader of content (but not .conf files)
    cd ~/projects/NathanHarrington.github.io
    pipenv run pelican -lr --autoreload --theme ../pelican-themes/personal-bootstrap3/ --output ./
    

### CNAMEs, Aliases and branches

    This is a github user page. Therefore the live content is in the master branch.
    The URL is NathanHarrington.github.io

    CNAME has to be in the root of the repository, it has to contain the
    domain name: nathanharrington.info

    Create two A records that point to the github IP addresses:
    
    dig nathanharrington.info +nostats +nocmd +nocomments

    ; <<>> DiG 9.10.3-RedHat-9.10.3-1.fc23 <<>> nathanharrington.info
    +nostats +nocmd +nocomments
    ;; global options: +cmd
    ;nathanharrington.info.         IN      A
    nathanharrington.info.  2979    IN      A       192.30.252.154
    nathanharrington.info.  2979    IN      A       192.30.252.153


### Push to a github user page

    Make sure you edit files in content/posts/ not in posts/ !

    pipenv run pelican -lr --autoreload --theme ../pelican-themes/personal-bootstrap3/ --output ./

    (Test on localhost:8000, verify everything looks fine)

    Add all of the new files for a post:
    git add content/posts/*
    git add content/images/*
    git add posts/*
    git add images/* 
    git add tags/* 
    (essentially anything in root, if you are disciplined, you should be
    able to do git add ./ )

    git commit -a -m "Documentation log message"
    git push origin master


### Convert an animated gif into a smaller animated gif

    convert source.gif -coalesce temp.gif
    convert -resize 100% temp.gif -resize 15% small.gif

### Generate the thumbnails by:

  cd thumbnails
  pwd
# Make sure you are in the thumbnails directory!
  cp ../*.jpg .
  morgrify -resize 200x200 *.jpg


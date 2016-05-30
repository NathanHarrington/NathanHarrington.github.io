Nathan Harrington personal static site using pelican.

### Setup and configuration

    Make sure you edit files in content/ not in the root.

    Clone this repository into:
    ~/projects/NathanHarrington.github.io
    
    Clone the pelican-themes fork:
    git clone https://github.com/NathanHarrington/pelican-themes ~/projects/pelican-themes

    export PATH=~/miniconda2/bin:$PATH
    conda create --name pelican_env pip
    source activate pelican_env
    pip install pelican Markdown
    
    In one window, setup auto-reloader of content (but not .conf files)
    source activate pelican_env
    cd ~/projects/NathanHarrington.github.io
    pelican --autoreload --theme ../pelican-themes/personal-bootstrap3/
        --output ./
    
    In a second window, setup the pelican webserver:
    source activate pelican_env
    cd ~/projects/NathanHarrington.github.io
    python -m pelican.server


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

    Make sure you edit files in content/ not in the root!

    pelican --theme ../pelican-themes/personal-bootstrap3/ content
            --output ./

    (Test on local machine, verify everything looks fine)

    git commit -a -m "Documentation log message"
    git push origin master

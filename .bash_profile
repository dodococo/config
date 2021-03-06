# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then       
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh            
fi

# Path definitions
export PATH=/home/deepakchethan/anaconda3/bin:/root/.gem/ruby/2.5.0/bin:$PATH                   
export PYSPARK_DRIVER_PYTHON=jupyter                                                            
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'                                                    
alias blog='sudo bundle exec jekyll serve'                                                      
export PATH=~/.npm-global/bin:$PATH

# start x server
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    echo "Staring I3WM"
    exec startx
fi

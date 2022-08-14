
TMP=$(mktemp)

CONFIG="$HOME/.config/gtk-3.0"

if test -f $CONFIG/bookmarks;then 
    cat $CONFIG/bookmarks | grep -v "ssh://${USER}@.*/home/${USER}" >  $TMP
else
    mkdir -p $CONFIG
fi

if test -f /home/.config/server;then
   . /home/.config/server
   if ping -c1 "$SERVER" 2>&1 >/dev/null;then
      ort="ssh://$USER@$SERVER/home/$USER"
      echo "$ort $USER on LTSP" >> $TMP
   fi
fi

mv $TMP $CONFIG/bookmarks




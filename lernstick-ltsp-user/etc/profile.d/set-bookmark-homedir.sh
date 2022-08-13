
if test -f $HOME/.config/gtk-3.0/bookmarks;then 
    cat $HOME/.config/gtk-3.0/bookmarks | grep -v "ssh://${USER}@.*/home/${USER}" >  /tmp/$USER.bookmarks
else
    test -d $HOME/.config/gtk-3.0 || mkdir -p $HOME/.config/gtk-3.0
    touch /tmp/$USER.bookmarks
fi

if test -f /home/.config/server;then

   . /home/.config/server

   if ping -c1 "$SERVER" ;then
      ort="ssh://$USER@$SERVER/home/$USER"
      echo "$ort $USER auf LTSP" >> /tmp/$USER.bookmarks
   fi
fi


mv /tmp/$USER.bookmarks $HOME/.config/gtk-3.0/bookmarks






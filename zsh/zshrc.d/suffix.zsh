# suffix.zsh
#
#   This is where suffix aliases live.
#
##################################################


# PDF & EPS
if which evince > /dev/null 2>&1
then
    alias -s pdf=evince
    alias -s eps=evince
elif which xreader > /dev/null 2>&1
then
    alias -s pdf=xreader
fi

# vlc
alias -s xspf=vlc
alias -s mpv=vlc
alias -s mkv=vlc
alias -s mp4=vlc
alias -s mpg=vlc
alias -s avi=vlc

# less
alias -s log=less

# eye of gnome
alias -s jpg=eog
alias -s png=eog
alias -s gif=eog
alias -s tif=eog
alias -s tiff=eog

# LibreOffice
alias -s odt=libreoffice
alias -s ott=libreoffice
alias -s odm=libreoffice
alias -s oth=libreoffice
alias -s ods=libreoffice
alias -s ots=libreoffice
alias -s odg=libreoffice
alias -s otg=libreoffice
alias -s odp=libreoffice
alias -s otp=libreoffice
alias -s odf=libreoffice
alias -s odb=libreoffice
#### MS Support
alias -s doc=libreoffice
alias -s docx=libreoffice
alias -s xls=libreoffice
alias -s xlsx=libreoffice
alias -s ppt=libreoffice
alias -s pptx=libreoffice

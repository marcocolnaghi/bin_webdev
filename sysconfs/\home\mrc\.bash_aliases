#!/bin/bash
LS_OPTIONS='-hAF'
alias ls='ls --color $LS_OPTIONS'
alias lg='ls |grep'
alias ll='ls -hl'
alias llg='ll |grep'
alias l='ls -A'

# Some more alias to avoid making mistakes:
alias rm='rm -vi'
alias cp='cp -vi'
alias mv='mv -vi'

alias poweroff='echo ATTENTION, USE:  /sbin/poweroff'
alias shutdown='echo ATTENTION, USE:  /sbin/shutdown'

# apt aliases
alias aptall='apt-get update;apt-get dist-upgrade; apt-get autoremove;apt-get autoclean'
alias up='sudo apt-get update;sudo apt-get -s dist-upgrade'
alias upd='sudo apt-get dist-upgrade'

# photo aliases
alias extcount="ls |sed -e 's/^.*\./\./'|sort |uniq -c"
alias r2s="photo_raws2subdir ."
alias grw="photo_getraws ."
alias red="photo_red ."

# linux prec commands
mclp() { mc . /mnt/linux_prec$(pwd); }
vilp() { vimdiff $1 /mnt/linux_prec$(pwd)/$1; }
cplp() { cp -vi /mnt/linux_prec$(pwd)/$1 .; }

## ssh access to servers
alias backupsrv='s=backupsrv;[[ "$UID" = "0" ]] && ssh $s || (su -c "ssh $s")'
alias bdc='s=bdc;[[ "$UID" = "0" ]] && ssh $s || (su -c "ssh $s")'
alias wendy='s=wendy;[[ "$UID" = "0" ]] && ssh $s || (su -c "ssh $s")'
alias servercarp='sudo ssh servercarp'

# megasync parallel commands
function papath()  {
    megasd="/data/sysbak/megasync"
    ppath=""
    case $(hostname -s) in
    webdev) 
        ppath="$megasd/work$(pwd)"
        ;;
    mcolnaghi4) 
        ppath="$megasd/home$(pwd)"
	;;    
	esac
	echo $ppath
}

function cppa() {
	diff $1 $(papath)/$1
	/usr/bin/cp -puiv $1 $(papath)/$1 
}

function mcpa() {
	mc . $(papath) 
}

function vipa() {
	vimdiff $1 $(papath)/$1
}

# other aliases
alias archive19='mkdir _2019; mv 19* _2019'
alias archive20='mkdir _2020; mv 20* _2020'
alias codium='codium --user-data-dir=/home/mrc/.vscode-oss'
alias flushcaches='systemd-resolve --flush-caches'
alias mc=". /usr/share/mc/bin/mc-wrapper.sh"
alias newpwd='apg -M SNCL -n 8 -x 8'
alias syncgdrive='rclone sync gdrive: /data/gdrive'
alias vpnfortire1='sudo -i openfortivpn fortire1.wertherint.com:443 -u MColnaghi --trusted-cert 4b696023b2e761cc0404e87e9a51674bddf1408a5c3018e47a2f0763d072671d --set-dns=1'
alias vpnfortire1ip='sudo -i openfortivpn 85.41.111.94:443 -u MColnaghi --trusted-cert 4b696023b2e761cc0404e87e9a51674bddf1408a5c3018e47a2f0763d072671d --set-dns=1'



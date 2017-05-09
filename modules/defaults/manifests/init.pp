#
# modules/defaults/manifests/init.pp
#
# Date:        2017-05-07
# Description: Defaults
#
# Author:      Cees van de Griend <c.vande.griend@gmail.com>
# Copyright:   (c) 2017 C.A. van de Griend
#

class defaults {
    include defaults::drtm
    
    if $hostname == 'linb0005140' {
        include defaults::firmware-linux-nonfree
    }

    include defaults::hostname
    include defaults::hosts
    include defaults::keyboard
    include defaults::locale
    include defaults::motd
    include defaults::prompt
    include defaults::puppet
    include defaults::rtl8188eufw
    include defaults::sudo
    include defaults::timezone
    include defaults::vim
}

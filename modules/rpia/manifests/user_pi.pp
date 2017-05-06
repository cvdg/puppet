#
# modules/rpia/manifests/user_pi.pp
#
# Date:        2017-05-06
# Description: Delete user pi
#
# Author:      Cees van de Griend <c.vande.griend@gmail.com>
# Copyright:   (c) 2017 C.A. van de Griend
#

class rpia::user_pi {
    user { 'pi':
        ensure     => absent,
        managehome => true,
    }
}
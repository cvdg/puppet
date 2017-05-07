#
# modules/user/manifests/cvdg.pp
#
# Date:        2017-05-07
# Description: User cvdg
#
# Author:      Cees van de Griend <c.vande.griend@gmail.com>
# Copyright:   (c) 2017 C.A. van de Griend
#

class user::cvdg {
    user { 'cvdg':
        ensure     => 'present',
        comment    => 'Cees van de Griend',
        home       => '/home/cvdg',
        managehome => true,
        shell      => '/bin/bash',
        uid        => '2000',
        groups     => [ 'adm', 'sudo', ],
        purge_ssh_keys => true,
    }

    ssh_authorized_key { 'ssh_cvdg':
        user       => 'cvdg',
        type       => 'rsa',
        key        => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAt3rXMruJqh29KZj3dTVDshhsP3L7epAd8YSDowbAfldnDM2GQ02WV19KwS0TcSsQcRw47EOwuvD3Jz7BtydellrB5YHqbW9jtYNo6HCn06qomeM/eLn+n9h9JF1UQ6Y5dJ3m7ChksxkksLvMpNMQRS6So2hjIAbv7zF67BB2x4OkVS856bsT1pjMzOYAFvVPV9KTjxhtd76kqu5Wlp+WnPcEaQ0JIOvEOfsVl1KN5Q1JoB+R4ZPkmJVWh1OKFFUIzBiAVSCW1AfypTNv+vuEAvpxSaV8mgnqSSV+JPRdesBpHiksbvXVWZehZJuLqCXSRRtCotOEeNbRqtYynwcwpw==',
    }
}
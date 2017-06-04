#
# modules/defaults/manifests/drtm.pp
#
# Date:        2017-06-04
# Description: Dartmoor
#
# Author:      Cees van de Griend <c.vande.griend@gmail.com>
# Copyright:   (c) 2017 C.A. van de Griend
#

class defaults::drtm {
    file { '/etc/cron.daily/drtm': 
        # source  => 'puppet:///modules/defaults/etc/cron.daily/drtm',
        # owner   => 'root',
        # group   => 'root',
        # mode    => '0755',
        ensure  => 'absent',
    }

    file { '/etc/cron.weekly/drtm': 
        ensure  => 'absent',
    }

    file { '/etc/systemd/system/drtm-daily.serice':
        source  => 'puppet:///etc/systemd/system/drtm-daily.serice',
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
    }

    file { '/etc/systemd/system/drtm-daily.timer':
        source  => 'puppet:///etc/systemd/system/drtm-daily.timer',
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
        require => File['/etc/systemd/system/drtm-daily.serice'],
    }

    service { 'drtm-daily',
        enable  => 'true',
        ensure  => 'started',
        require => File['/etc/systemd/system/drtm-daily.timer'],
    }
}

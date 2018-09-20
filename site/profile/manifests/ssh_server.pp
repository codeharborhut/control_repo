class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure  => present,
    user    => 'root',
    type    => 'ssh-rsa',
    key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDs9Rv8utQ/PeboGwm2U7D8QR+024tegDZCuBoC3biwZGxlCd0cVwaB99nH0iwxdjKEEWOJ+6bK7JdtP6YC3ythUEjrnzJciNRKNYdweHiS1CgbyHURCGU8OVkAoz0gwwmSO022FSmxw431K7oHpCZxH/XNp/6hELwiYM0SntXqfJ7apZakyGIQl3c/gG9Yyq5RAaMKjQoyzr1jJqLZ+Iat9aoNbgwkhtE/IRKWii3EHoIij9nRgam0CvFYPOjO0XiEcjUnNbcG4Ijiwfdk7SiEFtYS5dZHn7LmIziwbJFOxX5ngjB5wPaHtxy0k6ih8ukEJvsS/MA4ci/1ShEAxK9t',
  }
}

class courier {
  package { 
      "courier-imap": ensure => installed;
    }
    service {
      "courier-imap":
        enable => true, 
        ensure => running,
        require => Package["courier-imap"];
    }
}
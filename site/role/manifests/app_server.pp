class role::app_server {
  include profile::app
  include profile::web
  include profile::base
}

# [www.toddgaunt.com](https://www.toddgaunt.com)

This is my personal website. It uses the web-server `bastion`
(github.com/toddgaunt/bastion). It can be run by downloading
and installing the `bastion` webserver and running it on this
directory.

## Deployment Details
The primary deployment is currently hosted on a Fedora Digital Ocean droplet.
This costs around $5 a month and the scripts in this folder are for managing
that droplet.

- nftables.conf: configures the firewall for the droplet to allow for port 443 to
  forward to 4443 which the webserver runs on by default. If this file is changed,
  it can be reloaded on the deploment machine with `nft -f /path/to/nftables.conf`
  TODO: Have the server automatically reload this file, or change the default config
  after backing it up.
- sync.sh: synchronizes these local files with the files that are on the
  Digital Ocean droplet
- renew-cert.sh: Renews the x.509 certificate issued by Let's Encrypt. This
  should be run every couple of months, but should eventually be replaced with
  just certbot, which I'm not sure why it isn't working properly. UPDATE:
  certbot is working properly, however the server doesn't reload the newly
  issued certificates automatically

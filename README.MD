## Synopsis

Puppet module to setup a basic apache config.

## Example

Default values are stored in params.pp
Vhost files can be installed manually in /etc/httpd/conf/vhosts
Groups of vhost files can be installed in puppet under files/vhosts/groupname and assigned to hosts

## Motivation

Originally created to handle legacy properties running on apache. Currently handling infrastructure projects only.

## Installation

Supports CentOS 6. Does not require any repos beyond the base set.

## API Reference

vhostgroup => group of vhost files under files/vhosts/groupname to be installed
vhostpurge => boolean value, whether or not to purge existing vhosts from /etc/httpd/conf/vhosts, defaults to false

## Contributors

Ryan Munz for Giftcards.com - May 2015

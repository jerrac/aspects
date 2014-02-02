# Apache2 Role
This role currently only works on Ubuntu 12.04 with Apache 2.2.

Default vars are contained in roles/apache2/defaults/main.yml.

Their initial state is:

```yaml
apache2_defaults:
  enable_php: false
apache2_vhosts_defaults:
  default:
    server_name: localhost
    enabled: false
    server_admin: admin@example.org
    server_aliases: "www.localhost.example"
    docroot: "/var/www/"
    docroot_directory_options: |
      Options FollowSymLinks -Indexes -MultiViews
      AllowOverride All
      Order allow,deny
      allow from all
    ssl:
      enabled: false
      rewrite_to_https: false
      cert_authority: false
      site_cert: false
      private_key: false
      site_chain_file: false
      honor_cipher_order: On
      cipher_suite: "ECDHE-RSA-AES128-SHA256:RC4:HIGH:!MD5:!aNULL:!EDH;"
    extra_directives: |
      RewriteEngine On 
      RewriteCond %{REQUEST_FILENAME} !-f 
      RewriteCond %{REQUEST_FILENAME} !-d 
      RewriteCond %{REQUEST_URI} !^.*\.(css|jpe?g|gif|png|js|ico)$ [NC] 
      RewriteRule ^(.*)$ /index.php$1 [QSA,NE,L]
    log_level: warn
```

Host or group specific vars are set in their appropriate var files. Simply use the same variables from the defaults, renaming ```apache2_defaults``` to ```apache2``` and ```apache2_vhosts_defaults``` to ```apache2_vhosts```.

For example:

```yaml
apache2:
  enable_php: false
apache2_vhosts:
  site1:
    server_name: site1.lab
    enabled: false
    server_admin: admin@example.org
    server_aliases: "www.site1.example"
    docroot: "/var/www/site1"
  site2:
    server_name: site2.lab
    enabled: true
    server_admin: admin@example.org
    server_aliases: "www.site2.example"
    docroot: "/var/www/site2"
```

Would create two vhost files for site1 and site2. Only site2 would be enabled.
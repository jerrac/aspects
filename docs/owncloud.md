See the config.sample.php file for documentation on what values are valid. This role is in dev, so not all regex's are correct. Only add the config values you need to change.

    config:
      debug:
        regex: /(define\("DEBUG",)\s?(true|false|TRUE|FALSE)\s?\);/
        value: "define('DEBUG', false);"
      installed:
        regex: /("installed")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"installed" => false'
      datadirectory:
        regex: /("datadirectory")\s?=>\s?".*"\s?,/
        value: '"datadirectory" => "/var/www/owncloud/data",'
      dbtype:
        regex: /("dbtype")\s?=>\s?".*"\s?,/
        value: '"dbtype" => "mysql"'
      dbname:
        regex: /("dbname")\s?=>\s?".*"\s?,/
        value: '"dbname" => "owncloud"'
      dbuser:
        regex: /("dbuser")\s?=>\s?".*"\s?,/
        value: '"dbuser" => "databaseuser"'
      dbpassword:
        regex: /("dbpassword")\s?=>\s?".*"\s?,/
        value: '"dbpassword" => "password"'
      dbhost:
        regex: /("dbhost")\s?=>\s?".*"\s?,/
        value: '"dbhost" => "localhost"'
      dbtableprefix: 
        regex: /("dbtableprefix")\s?=>\s?".*"\s?,/
        value: '"dbtableprefix" => "oc_"'

      passwordsalt is created automatically by OwnCloud on install. If you change it, your passwords will break. So be careful!
      passwordsalt:
        regex: /("passwordsalt")\s?=>\s?".*"\s?,/
        value: '"passwordsalt" => "blahrandomestring"'
      forcessl:
        regex: /("forcessl")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"forcessl" => false'
      TODO: fix array regex
      blacklisted_files:
        regex: /("blacklisted_files")\s?=>\s?".*"\s?,/
        value: '"blacklisted_files" => false'
      overwritehost: ""
        regex: /("overwritehost")\s?=>\s?".*"\s?,/
        value: '"overwritehost" => false'
      overwriteprotocol:
        regex: /("overwriteprotocol")\s?=>\s?".*"\s?,/
        value: '"overwriteprotocol" => ""'
      overwritewebroot:
        regex: /("overwritewebroot")\s?=>\s?".*"\s?,/
        value: '"overwritewebroot" => ""'
      overwritecondaddr:
        regex: /("overwritecondaddr")\s?=>\s?".*"\s?,/
        value: '"overwritecondaddr" => ""'
      proxy:
        regex: /("proxy")\s?=>\s?".*"\s?,/
        value: '"proxy" => ""'
      proxyuserpwd:
        regex: /("proxyuserpwd")\s?=>\s?".*"\s?,/
        value: '"proxyuserpwd" => ""'
      TOD: fix array regex
      trusted_domains:
        regex: /("trusted_domains")\s?=>\s?".*"\s?,/
        value: '"trusted_domains" => array("domain"),'
      theme:
        regex: /("regex")\s?=>\s?".*"\s?,/
        value: '"regex" => ""'
      default_language:
        regex: /("default_language")\s?=>\s?".*"\s?,/
        value: '"default_language" => "en"'
      thirdpartyroot:
        regex: /("3rdpartyroot")\s?=>\s?".*"\s?,/
        value: '"3rdpartyroot" => ""'
      thirdpartyurl:
        regex: /("3rdpartyurl")\s?=>\s?".*"\s?,/
        value: '"3rdpartyurl" => ""'
      defaultapp:
        regex: /("defaultapp")\s?=>\s?".*"\s?,/
        value: '"defaultapp" => "files"'
      knowledgebaseenabled:
        regex: /("knowledgebaseenabled")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"knowledgebaseenabled" => true'
      appstoreenabled:
        regex: /("appstoreenabled")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"appstoreenabled" => true'
      appstoreurl:
        regex: /("appstoreurl")\s?=>\s?".*"\s?,/
        value: '"appstoreurl" => "http://api.apps.owncloud.com/v1"'
      mail_domain:
        regex: /("mail_domain")\s?=>\s?".*"\s?,/
        value: '"mail_domain" => "domain"'
      mail_smtpdebug:
        regex: /("mail_smtpdebug")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"mail_smtpdebug" => false'
      mail_smtpmode:
        regex: /("mail_smtpmode")\s?=>\s?".*"\s?,/
        value: '"mail_smtpmode" => "sendmail"'
      mail_smtphost:
        regex: /("mail_smtphost")\s?=>\s?".*"\s?,/
        value: '"mail_smtphost" => "127.0.0.1"'
      Int regex, needs fixing.
      mail_smtpport:
        regex: /("mail_smtpport")\s?=>\s?".*"\s?,/
        value: '"mail_smtpport" => 25'
      TODO: Fix int regex
      mail_smtptimeout:
        regex: /("mail_smtptimeout")\s?=>\s?".*"\s?,/
        value: '"mail_smtptimeout" => 10'
      mail_smtpsecure:
        regex: /("mail_smtpsecure")\s?=>\s?".*"\s?,/
        value: '"mail_smtpsecure" => ""'
      mail_smtpauth:
        regex: /("mail_smtpauth")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"mail_smtpauth" => false'
      mail_smtpauthtype:
        regex: /("mail_smtpauthtype")\s?=>\s?".*"\s?,/
        value: '"mail_smtpauthtype" => "LOGIN"'
      mail_smtpname: ""
        regex: /("mail_smtpname")\s?=>\s?".*"\s?,/
        value: '"mail_smtpname" => false'
      mail_smtppassword:
        regex: /("mail_smtppassword")\s?=>\s?".*"\s?,/
        value: '"mail_smtppassword" => ""'
      TODO: Fix array regex
      Should look something like this: "memcached_server" => array('localhost', 11211),
      memcached_server: "localhost"
        regex: /("memcached_server")\s?=>\s?".*"\s?,/
        value: '"memcached_server" => false'
      TODO: Fix INT regex
      trashbin_retention_obligation:
        regex: /("trashbin_retention_obligation")\s?=>\s?".*"\s?,/
        value: '"trashbin_retention_obligation" => 30'
      trashbin_auto_expire:
        regex: /("trashbin_auto_expire")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"trashbin_auto_expire" => true'
      allow_user_to_change_display_name:
        regex: /("allow_user_to_change_display_name")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"allow_user_to_change_display_name" => true'
      appcodechecker:
        regex: /("appcodechecker")\s?=>\s?".*"\s?,/
        value: '"appcodechecker" => ""'
      updatechecker:
        regex: /("updatechecker")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"updatechecker" => true'
      has_internet_connection:
        regex: /("has_internet_connection")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"has_internet_connection" => true'
      check_for_working_webdav:
        regex: /("check_for_working_webdav")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"check_for_working_webdav" => true'
      check_for_working_htaccess:
        regex: /("check_for_working_htaccess")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"check_for_working_htaccess" => true'
      log_type:
        regex: /("log_type")\s?=>\s?".*"\s?,/
        value: '"log_type" => "syslog"'
      logfile:
        regex: /("logfile")\s?=>\s?".*"\s?,/
        value: '"logfile" => ""'
      loglevel:
        regex: /("loglevel")\s?=>\s?".*"\s?,/
        value: '"loglevel" => ""'
      logdateformat:
        regex: /("logdateformat")\s?=>\s?".*"\s?,/
        value: '"logdateformat" => "F d, Y H:i:s"'
      logtimezone:
        regex: /("logtimezone")\s?=>\s?".*"\s?,/
        value: '"logtimezone" => "Europe/Berlin"'
      log_query:
        regex: /("log_query")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"log_query" => false'
      log_authfailip:
        regex: /("log_authfailip")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"log_authfailip" => false'
      log_rotate_size in the config.sample.php file is false, thus for now, we'll assume this is a boolean.
      log_rotate_size:
        regex: /("log_rotate_size")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"log_rotate_size" => false'
      TODO: Fix int regex
      remember_login_cookie_lifetime: 
        regex: /("remember_login_cookie_lifetime")\s?=>\s?".*"\s?,/
        value: '"remember_login_cookie_lifetime" => "60*60*24*15"'
      TODO: Fix int regex
      session_lifetime:
        regex: /("session_lifetime")\s?=>\s?".*"\s?,/
        value: '"session_lifetime" => "60 * 60 * 24"'
      session_keepalive:
        regex: /("session_keepalive")\s?=>\s(true|false|TRUE|FALSE)\s?\);/
        value: '"session_keepalive" => true'
      custom_csp_policy:
        regex: /("custom_csp_policy")\s?=>\s?".*"\s?,/
        value: '"custom_csp_policy" => "default-src 'self'; script-src 'self' 'unsafe-eval'; style-src 'self' 'unsafe-inline'; frame-src *; img-src *; font-src 'self' data:; media-src *"'
      xframe_restriction:
        regex: /("xframe_restriction")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"xframe_restriction" => true'
      maintenance:
        regex: /("maintenance")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"maintenance" => false'
      #apps_paths:
      customclient_desktop:
        regex: /("customclient_desktop")\s?=>\s?".*"\s?,/
        value: '"customclient_desktop" =>  "http://owncloud.org/sync-clients/"'
      customclient_android:
        regex: /("customclient_android")\s?=>\s?".*"\s?,/
        value: '"customclient_android" => "https://play.google.com/store/apps/details?id=com.owncloud.android"'
      customclient_ios:
        regex: /("customclient_ios")\s?=>\s?".*"\s?,/
        value: '"customclient_ios" => "https://itunes.apple.com/us/app/owncloud/id543672169?mt=8"'
      enable_previews:
        regex: /("enable_previews")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"enable_previews" => true'
      preview_max_x:
        regex: /("preview_max_x")\s?=>\s?".*"\s?,/
        value: '"preview_max_x" => null'
      preview_max_y:
        regex: /("preview_max_y")\s?=>\s?".*"\s?,/
        value: '"preview_max_y" => null'
      TODO: Fix int regex
      preview_max_scale_factor:
        regex: /("preview_max_scale_factor")\s?=>\s?".*"\s?,/
        value: '"preview_max_scale_factor" => 10'
      preview_libreoffice_path: 
        regex: /("preview_libreoffice_path")\s?=>\s?".*"\s?,/
        value: '"preview_libreoffice_path" => "/usr/bin/libreoffice"'
      preview_office_cl_parameters:
        regex: /("preview_office_cl_parameters")\s?=>\s?".*"\s?,/
        value: '"preview_office_cl_parameters" => ""'
      enable_avatars:
        regex: /("enable_avatars")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"enable_avatars" => true'
      TODO: Fix array regex
      openssl:
        regex: /("openssl")\s?=>\s?".*"\s?,/
        value: '"openssl" => array()'
      singleuser:
        regex: /("singleuser")\s?=>\s?(true|false|TRUE|FALSE)\s?\);/
        value: '"singleuser" => false'
#!/bin/bash

webroot="/home/pdrupal/webs/opencart";

chmod 0777 ${webroot}/config.php
chmod 0777 ${webroot}/admin/config.php

chmod 0777 -R ${webroot}/system/storage/cache/
chmod 0777 -R ${webroot}/system/storage/logs/
chmod 0777 -R ${webroot}/system/storage/download/
chmod 0777 -R ${webroot}/system/storage/upload/
chmod 0777 -R ${webroot}/system/storage/modification/
chmod 0777 -R ${webroot}/image/
chmod 0777 -R ${webroot}/image/cache/
chmod 0777 -R ${webroot}/image/catalog/

chmod 0777 ${webroot}/index.php
chmod 0777 ${webroot}/admin/index.php
chmod 0777 ${webroot}/vqmod
chmod 0777 -R ${webroot}/vqmod/vqcache
chmod 0777 -R ${webroot}/vqmod/checked.cache

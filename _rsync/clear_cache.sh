#!/bin/bash

webroot="/home/pdrupal/webs/opencart";

rm -rf ${webroot}/system/storage/cache/*
rm -rf ${webroot}/system/storage/logs/*
rm -rf ${webroot}/image/cache/*

rm -rf ${webroot}/vqmod/vqcache/*
: > ${webroot}/vqmod/checked.cache

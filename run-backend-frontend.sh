#!/bin/sh

#cd /api/ && bundle exec rake;
#cd /web
#NODE_ENV=production gulp

cd /api
ADMIN_EMAIL=email@example.com ADMIN_PASSWORD=password rake admin:create_user;

cd /web
gulp --tasks
gulp server


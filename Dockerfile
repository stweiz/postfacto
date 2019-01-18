FROM postfacto-local-builder:latest

ADD api/ /api/
RUN cd /api && bundle install && bundle exec rake db:create db:migrate

ADD web/ /web/
RUN cd /web && npm i 

ADD run-backend-frontend.sh /

EXPOSE 3000
EXPOSE 4000

ENTRYPOINT ["sh", "run-backend-frontend.sh"]

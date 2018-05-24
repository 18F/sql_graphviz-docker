FROM alpine
MAINTAINER Greg Walker <greg.walker@gsa.gov>

RUN apk add --update postgresql-client python2 py-pip graphviz
RUN pip install pyparsing

RUN mkdir app
WORKDIR app

# Pin to a known version
RUN wget https://raw.githubusercontent.com/rm-hull/sql_graphviz/e4f099897e0ab5910c74b4950deea4639daaab81/sql_graphviz.py

CMD python sql_graphviz.py
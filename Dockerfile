FROM python:3.6

ENV LANG             en
ENV SPACY_VERSION    1.7

#RUN apt-get update && apt-get install -y build-essential python3-dev git

#RUN pip3 install --upgrade pip setuptools

########################################
# spaCy
########################################
RUN pip3 install spacy==${SPACY_VERSION} falcon falcon_cors
RUN python3 -m spacy download ${LANG}

CMD ["python3"]

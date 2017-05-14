FROM augur_spacy:latest


RUN mkdir -p /usr/sense2vec
COPY . /usr/sense2vec/
WORKDIR /usr/sense2vec

ADD app.py /app.py


EXPOSE 8002

RUN pip3 install -r requirements.txt
RUN pip3 install -e .
RUN sputnik --name sense2vec --repository-url http://index.spacy.io install reddit_vectors

CMD ["python3", "app.py"]
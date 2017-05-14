FROM augur_spacy:latest


RUN mkdir -p /usr/displacy
COPY . /usr/displacy/
WORKDIR /usr/displacy


EXPOSE 8001

RUN pip3 install -r requirements.txt

CMD ["python3", "app.py"]






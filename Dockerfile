FROM python:3.8

ENV GIT_REPO=https://github.com/rzuckerm/tex-docker-image.git

WORKDIR /workspace

RUN apt update

RUN apt install -y git texlive-base

RUN git clone $GIT_REPO docker-image

RUN mv docker-image/html2txt /usr/local/bin

RUN mv docker-image/requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

WORKDIR /code

COPY bin .

CMD "./run.sh"
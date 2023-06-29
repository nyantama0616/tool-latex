FROM paperist/texlive-ja:latest
RUN apt update && apt upgrade -y
RUN apt install git -y
RUN apt install make
RUN apt install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
COPY ./lint /workspace/lint
RUN cd /workspace/lint && npm install
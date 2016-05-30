FROM ubuntu

# install prerequisites
RUN apt-get update && apt-get install -y \
  curl \
  unzip \
  git

# install mysql
RUN apt-get install -y mysql-client

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - && \
  apt-get install -y nodejs

# install chrome
RUN curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && \
  apt-get update && apt-get install -y google-chrome-stable

# install firefox
RUN apt-get install -y firefox

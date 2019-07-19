# ubuntu is used as base per requirement
FROM ubuntu:latest

# install nodejs and npm as required for Angular
RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs
# install the angular cli in the container so that 'ng' commands can be used
RUN npm install -g @angular/cli

COPY . /usr/src/app
WORKDIR /usr/src/app

# node_modules are ignored to speed up build, so npm install is needed here
RUN npm install

# serve the angular app, by default its on port 4200
EXPOSE 4200
CMD ["ng","serve","--host", "0.0.0.0"]

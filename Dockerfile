FROM node:latest
MAINTAINER James Stormes

# Install bower and grunt
RUN npm install bower -g 
RUN npm install grunt -g

# Open a bash terminal
CMD ["bash"]
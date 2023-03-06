FROM node:16 as dependencies
WORKDIR /app
COPY . ./
RUN apt-get -qq -y install wkhtmltopdf
RUN npm i 
EXPOSE 3000
CMD ["npm", "start"]

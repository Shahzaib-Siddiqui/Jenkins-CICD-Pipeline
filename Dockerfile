FROM nginx:latest
RUN apt update
RUN apt install zip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/medic-care.zip /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN unzip medic-care.zip
RUN rm index.html
RUN cp -r /usr/share/nginx/html/templatemo_566_medic_care/* /usr/share/nginx/html

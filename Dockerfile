FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install wget -y
RUN wget https://raw.githubusercontent.com/mehmetbatinusakyt/devcloudvps/main/vpsintall.sh
CMD ["sh", "vpsinstall.sh"]
EXPOSE 22

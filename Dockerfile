FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install wget -y
RUN wget https://raw.githubusercontent.com/mehmetbatinusakyt/devcloudvps/main/vpsintall.sh
RUN chmod +x vpsintall.sh
CMD ["./vpsintall.sh"]
EXPOSE 99999999999999

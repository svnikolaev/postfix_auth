FROM debian:11.5-slim
LABEL maintainer="s.nikolaev@nklv.su"
RUN apt update && apt -y upgrade
RUN apt -y install postfix sasl2-bin
RUN apt -y install rsyslog
ADD main.cf /etc/postfix/
ADD smtpd.conf /etc/postfix/sasl/
ADD run.sh /
RUN chmod +x /run.sh
RUN touch /var/log/mail.log
RUN sed -i '/imklog/s/^/#/' /etc/rsyslog.conf
RUN sed -i 's~etc/nss_mdns.config"~etc/nss_mdns.config etc/sasldb2"~' /usr/lib/postfix/configure-instance.sh
CMD ["/run.sh"]
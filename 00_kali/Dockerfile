FROM kalilinux/kali-rolling
RUN apt update && apt -y install kali-linux-nethunter kali-tools-forensics kali-linux-labs net-tools
RUN apt -y install ldap-utils rwho rsh-client x11-apps finger python3-sqlalchemy

WORKDIR /usr/share/
RUN git clone https://github.com/secforce/sparta.git
RUN chmod +x /usr/share/sparta/sparta
RUN cp /usr/share/sparta/sparta /usr/bin/

ADD . /code
WORKDIR /code

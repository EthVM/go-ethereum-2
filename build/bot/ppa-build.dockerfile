FROM ubuntu

RUN apt-get update
RUN apt-get -yq --no-install-suggests --no-install-recommends install devscripts debhelper dput fakeroot golang

RUN mkdir -p ~/.ssh && echo '|1|7SiYPr9xl3uctzovOTj4gMwAC1M=|t6ReES75Bo/PxlOPJ6/GsGbTrM0= ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA0aKz5UTUndYgIGG7dQBV+HaeuEZJ2xPHo2DS2iSKvUL4xNMSAY4UguNW+pX56nAQmZKIZZ8MaEvSj6zMEDiq6HFfn5JcTlM80UwlnyKe8B8p7Nk06PPQLrnmQt5fh0HmEcZx+JU9TZsfCHPnX7MNz4ELfZE6cFsclClrKim3BHUIGq//t93DllB+h4O9LHjEUsQ1Sr63irDLSutkLJD6RXchjROXkNirlcNVHH/jwLWR5RcYilNX7S5bIkK8NlWPjsn/8Ua5O7I9/YoE97PpO6i73DTGLh5H9JN/SITwCKBkgSDWUt61uPK3Y11Gty7o2lWsBjhBUm2Y38CBsoGmBw==' >> ~/.ssh/known_hosts

WORKDIR /source
ENTRYPOINT build/bot/ppa-build.sh
# Printing Application Dockerfile

FROM ubuntu

COPY apt.conf /etc/apt/apt.conf


# Dependencies
RUN apt-get update
RUN apt-get -y install python-pip python-dev libncurses5-dev libjpeg-dev zlib1g-dev libfreetype6-dev libpng12-dev 

# New user
RUN useradd -ms /bin/bash eh
RUN chown -R eh:eh /home/eh

WORKDIR /home/eh

# Repo clone
copy printing /home/eh
WORKDIR /home/eh/
RUN chown -R eh:eh /home/eh
USER eh

ENV PATH=/home/eh/.local/bin:$PATH
RUN pip install --user -r requirements.txt
EXPOSE 8000

# Starting the server
CMD /home/eh/.local/bin/supervisord

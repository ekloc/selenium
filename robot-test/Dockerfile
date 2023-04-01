FROM python:3.10-alpine

# Enure python stdout and stderr is printed to terminal without buffer
ENV PYTHONUNBUFFERED 1

WORKDIR /app/robot-test

COPY app .
COPY requirements.txt .

#Below code did not work
#RUN apt-get install -y libglib2.0-0=2.50.3-2 \
#    libnss3=2:3.26.2-1.1+deb9u1 \
#    libgconf-2-4=3.2.6-4+b1 \
#    libfontconfig1=2.11.0-6.7+b1

# Initially I was getting the errors that made me instal additional packages
#RUN apt-get -y update && apt-get -y install libnss3
#RUN apt-get install -y libglib2.0 libgconf-2-4 libfontconfig1

# Upgrade all packages and install libraries specified in requirements file
RUN pip install -U -r requirements.txt 

# Execute run script with environement variables defined in env.list
CMD [ "sh", "-c", "./run.sh ]
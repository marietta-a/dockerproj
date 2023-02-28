FROM python:3.7.3-stretch

#Working Directory
WORKDIR /app

#copy source code to working directory
Copy . app.py /app/

# Install packages for requirements.txt
# hadolint ignore=
RUN pip install --upgrade pip 23.0.1  &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
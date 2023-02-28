FROM python:3.7.3-stretch

#Working Directory
WORKDIR /app

#copy source code to working directory
Copy . app.py /app/

# Install packages for requirements.txt
# hadolint ignore=
RUN python -m pip install --upgrade pip  &&\
    python -m pip install --trusted-host pypi.python.org -r requirements.txt
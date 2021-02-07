# get Python3
FROM python:3

# tells us which user should be running the image
USER root

# sets the working directory for some other commands, like what are in the CMD or RUN sections
WORKDIR /app

# copies all the files and directories from the current directory (specified with the .) to the /app directory
ADD . /app

#  installs the requirements for our application using pip and the requirements.txt file provided
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# tells Docker which ports to listen on at runtime.
EXPOSE 80

# sets the command to be executed when running the image `python app.py`
CMD ["python", "web.py"]
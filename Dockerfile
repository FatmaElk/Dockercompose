# Define the base image
FROM python:3.6-slim-buster

# Define the  maintainer
LABEL MAINTAINER="askriradhouen@gmail.com"

# define the env variables
ENV PORT=5000 \
    HOST=0.0.0.0

ARG name=defaultValue

# define the working directory 
WORKDIR /app

# Copy requirement
COPY requirements.txt .

# install dependencies

RUN pip install -r requirements.txt

COPY . .

# create the app user
RUN addgroup --system app && adduser --system --group app
# chown all the files to the app user
RUN chown -R app:app /app
# Use the user app
USER app


# Expose Port 5000
EXPOSE ${PORT}


#  Start the flask api will be running in 0.0.0.0:5000
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
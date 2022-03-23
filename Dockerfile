# define the base image
FROM python:3

# define the working directory
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# expose 5000 port
EXPOSE 5000

# run the application
CMD ["python", "./app.py"]

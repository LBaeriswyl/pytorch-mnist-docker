FROM python:3.11

# Set up the directory and install dependencies
WORKDIR /app
ADD requirements.txt /app
RUN pip install -r requirements.txt

# Add the code as the last Docker layer because it changes the most
ADD main.py  /app/main.py

# Run the service
CMD [ "python", "main.py", "--batch-size", "128", "--epochs", "1" ]
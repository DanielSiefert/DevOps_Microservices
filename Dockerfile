FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /opt/predictor

## Step 2:
# Copy source code to working directory
COPY ./app.py /opt/predictor/app.py
COPY model_data/ /opt/predictor/model_data/
COPY ./requirements.txt /tmp/requirements.txt
## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install -r /tmp/requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python3", "/opt/predictor/app.py"]

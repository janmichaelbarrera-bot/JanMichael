FROM python:3.10-slim

# Set working directory
WORKDIR /code

# Copy requirement file
COPY requirements.txt /code/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files
COPY . /code/

# Command to run FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

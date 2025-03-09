FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your notebooks and data folder into the container
COPY notebooks/ /app/notebooks/
COPY data /app/data

# Update pip to the latest version
RUN pip install --upgrade pip

# Install the necessary libraries
RUN pip install scikit-learn pandas tensorflow jupyter

# Default command to start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

# docker run -it -p 8888:8888 -v /path/to/mod21:/app mod21_with_data
# docker start -ai suspicious_hypatia
# jupyter notebook --ip=0.0.0.0 --no-browser --allow-root




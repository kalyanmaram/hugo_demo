# Use an official Hugo runtime as a parent image
FROM klakegg/hugo:0.92.0-onbuild AS hugo

# Set the working directory to the Hugo site directory
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Expose port 1313 for Hugo server
EXPOSE 1313

# Command to run the Hugo development server
CMD ["hugo", "server", "--bind", "0.0.0.0", "--port", "1313", "--baseUrl", "http://localhost:1313"]

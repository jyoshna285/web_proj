# Use Nginx as the base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default index.html to replace with our file
RUN rm -rf /usr/share/nginx/html/*

# Copy our HTML file into the Nginx web root
COPY loan_calculator.html /usr/share/nginx/html/index.html

# Expose port 80 to allow web traffic
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]

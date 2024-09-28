# Start from the official Go image
FROM golang:1.20-alpine

# Set environment variable to disable Go modules
ENV GO111MODULE=off

# Set the working directory inside the container
WORKDIR /app

# Copy the Go application into the container
COPY . .

# Build the Go application without modules
RUN go build -o date-time-app .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the application
CMD ["./date-time-app"]
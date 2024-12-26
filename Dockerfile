# Use an official Golang runtime as the base image
FROM golang:1.20

# Set the working directory inside the container
WORKDIR /app

# Copy the Go modules and application files
COPY go.mod go.sum ./
RUN go mod download
COPY . ./

# Build the application
RUN go build -o app .

# Expose the application on port 8080
EXPOSE 8080

# Run the application
CMD ["./app"]

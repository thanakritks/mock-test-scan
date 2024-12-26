# Use an official Golang image as the base image
FROM golang:1.20-buster AS builder

# Set the working directory
WORKDIR /app

# Copy the Go modules manifest files
COPY go.mod go.sum ./

# Download dependencies
RUN go mod download

# Copy the source code
COPY . ./

# Build the application
RUN go build -o mockapp

# Use a minimal image for running the application
FROM debian:buster-slim

# Set the working directory
WORKDIR /app

# Add a non-root user and switch to it
RUN useradd -m appuser
USER appuser

# Copy the built binary from the builder stage
COPY --from=builder /app/mockapp ./

# Expose the application port
EXPOSE 8080

# Add a health check
HEALTHCHECK CMD curl --fail http://localhost:8080/health || exit 1

# Command to run the application
CMD ["./mockapp"]

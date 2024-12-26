# Application structure

```
mock-app/
├── Dockerfile
├── main.go
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── README.md
```

## Instructions

1. Clone the repository.
2. Build the application using `docker build -t mock-app .`.
3. Run the application with `docker run -p 8080:8080 mock-app`.
4. Use Terraform to provision infrastructure: `terraform init && terraform apply`.

**Note**: This application and infrastructure contain vulnerabilities for testing purposes. Use in controlled environments only!

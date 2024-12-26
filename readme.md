# Application structure

```
mock-test-scan/
├── Dockerfile
├── main.go
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── .github/
│   └── workflows/
│       ├── build-and-push.yml
│       ├── codeql-analysis.yml
│       └── trivy-scan.yml
└── README.md
```

## Instructions

1. Clone the repository.
2. Build the application using `docker build -t mock-app .`.
3. Run the application with `docker run -p 8080:8080 mock-app`.
4. Use Terraform to provision infrastructure: `terraform init && terraform apply`.
5. Update GitHub repository secrets `DOCKER_USERNAME` and `DOCKER_PASSWORD` to enable Docker image build and push.
6. CodeQL and Trivy scans are automated through GitHub Actions.

**Note**: This application and infrastructure contain vulnerabilities for testing purposes. Use in controlled environments only!
# Docker CI Demo
[![Docker CI](https://github.com/LaurisNeimanis/docker-ci-demo/actions/workflows/ci.yml/badge.svg)](https://github.com/LaurisNeimanis/docker-ci-demo/actions/workflows/ci.yml)

This repository demonstrates a basic Docker setup combined with a GitHub Actions CI pipeline for automated builds and tests.

## Features

- **Dockerfile**: Defines an image for a simple PHP application.
- **GitHub Actions Workflow**: `.github/workflows/ci.yml` runs on each push to build the Docker image and run simple tests.

## Getting Started

### Prerequisites

- Docker installed locally
- GitHub account to use Actions

### Installation & Usage

1. **Clone the repository**
   ```bash
   git clone https://github.com/LaurisNeimanis/docker-ci-demo.git
   cd docker-ci-demo
   ```

2. **Build the Docker image**
   ```bash
   docker build -t docker-ci-demo .
   ```

3. **Run the container locally**
   ```bash
   docker run --rm -p 8080:80 docker-ci-demo
   ```
   Visit `http://localhost:8080` to see the running application.

4. **CI Pipeline**
   Push any changes to the `master` branch to trigger the GitHub Actions workflow. It will:
   - Checkout the code
   - Build the Docker image
   - Run containerized tests (if available)

## Repository Structure

```
├── Dockerfile
├── src/
│ ├── App/
│ │ └── Hello.php
│ └── index.php
├── .github/
│   └── workflows/
│       └── ci.yml
├── README.md
└── composer.json
```

## Contributing

Feel free to submit issues or pull requests to improve the demo or add new features.

## License

This project is open-source and available under the MIT License.

---

🔗 **Back to portfolio:** [My Portfolio](https://github.com/LaurisNeimanis/my-portfolio)


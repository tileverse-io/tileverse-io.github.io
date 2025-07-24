# Tileverse.io Website

This repository contains the source code for the [Tileverse.io](https://tileverse.io) website, built with [MkDocs](https://www.mkdocs.org/) and [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

## Purpose

This website serves as:

1. **Project Documentation Hub**: Central location for all Tileverse project information
2. **Community Landing Page**: Introduction to the Tileverse ecosystem for developers

## Structure

```
.
├── docs/                   # Documentation source files
│   ├── index.md           # Homepage content
│   └── assets/            # Static assets (CSS, images)
├── mkdocs.yml             # MkDocs configuration
├── requirements.txt       # Python dependencies
├── CNAME                  # GitHub Pages custom domain
└── .github/workflows/     # CI/CD automation
```

## Development

### Prerequisites

- Python 3.11+
- pip

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/tileverse-io/tileverse.github.io.git
   cd tileverse.github.io
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Serve locally:
   ```bash
   mkdocs serve
   ```

   The site will be available at http://127.0.0.1:8000

### Building

To build the static site:

```bash
mkdocs build
```

The built site will be in the `site/` directory.

## Deployment

The site is automatically deployed to GitHub Pages when changes are pushed to the `main` branch. The deployment is handled by GitHub Actions (see `.github/workflows/deploy.yml`).

### Custom Domain Setup

The site uses the custom domain `tileverse.io` configured via:

1. `CNAME` file in the repository root
2. DNS configuration in Cloudflare pointing to GitHub Pages
3. GitHub Pages settings in the repository

## Projects

This website showcases the following Tileverse projects:

- **[Tileverse Range Reader](https://github.com/tileverse-io/tileverse-rangereader)**: High-performance byte-range reading library
- **[Tileverse PMTiles](https://github.com/tileverse-io/tileverse-pmtiles)**: PMTiles format support for Java

## Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This website content is licensed under the [Apache License 2.0](LICENSE).

---

*Maintained by [Multiversio LLC](https://multiversio.com)*
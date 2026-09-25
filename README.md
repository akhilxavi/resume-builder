# Akhil Xavier Resume
 LaTeX source for my resume.
## Requirements
- Git
- Docker
- No local TeX Live installation is required.
## Build
Clone the repository and enter the project directory:
```
git clone <repository-url>
cd resume-builder
```
## Build the resume:
```
make
```

The output file is:
`akhilxavier-resume.pdf`


## Clean

Remove generated LaTeX files:
```
make clean
```

Then build again:
```
make
```

## Docker
The project uses the TeX Live Docker image defined by the Dockerfile.
To build the Docker image manually:
```
docker build -t akhilxavier-resume .
```
To compile manually:
```
docker run --rm \
  -v "$PWD:/data" \
  -w /data \
  akhilxavier-resume \
  pdflatex -interaction=nonstopmode -halt-on-error akhilxavier-resume.tex
```
- Using `make` is recommended.
## GitHub Actions
- GitHub Actions automatically builds the resume on every push and pull request.

The workflow is:

- `.github/workflows/build.yml`
- It builds the Docker image and compiles: `akhilxavier-resume.tex`

The generated PDF is uploaded as a GitHub Actions artifact.

## Files
```
akhilxavier-resume.tex — Resume source
altacv.cls — AltaCV document class
AkhilXavier.jpg — Resume photo
Dockerfile — LaTeX build environment
Makefile — Build commands
.github/workflows/build.yml — Automated build
README.md — Project documentation
```

## License
- Resume content © Akhil Xavier.
- `altacv.cls` is distributed under the license included with the file.

class: CommandLineTool
doc: Fastqc training docker
id: Fastqc-docker-ar-v1.1.1
label: "Fastqc v0.11.4"

cwlVersion: v1.0

dct:creator:
  "@id": "http://orcid.org/0000-0003-0342-8531"
  foaf:name: Adelaide Rhodes
  foaf:mbox: "mailto:adelaide.rhodes@gmail.com"

requirements:
  - class: DockerRequirement
    dockerPull: "green_slime:latest"

hints:
  - class: ResourceRequirement
    coresMin: 4
    ramMin: 2048

inputs:
  fastq:
    type: File
    doc: "Fastq file to be analyzed"
    inputBinding:
      position: 1
  threads:
    type: int
    doc: "Number of threads"
    inputBinding:
      position: 2
      prefix: --threads

outputs:
  zippedFile:
    type: File
    outputBinding:
      glob: '*.zip'
  report:
    type: Directory
    outputBinding:
      glob: .

baseCommand: [fastqc, --outdir, ., --extract]

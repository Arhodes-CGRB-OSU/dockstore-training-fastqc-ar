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
    dockerPull: "purple_goo:latest"

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

report_files:
    type:
      type: array
      items: File
    outputBinding:
      # should be put in the working directory
       glob: "*.html"
    doc: "HTML reports with embedded graphs"
      

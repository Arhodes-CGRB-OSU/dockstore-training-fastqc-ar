class: CommandLineTool
id: "fastqc-ar"
label: "Fastqc v0.11.4"

cwlVersion: v1.0

dct:creator:
  "@id": "http://orcid.org/0000-0003-0342-8531"
  foaf:name: Adelaide Rhodes
  foaf:mbox: "mailto:adelaide.rhodes@gmail.com"

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/repository/arhodes_cgrb_osu/dockstore-training-fastqc-ar"

hints:
  - class: ResourceRequirement
    coresMin: 4
    ramMin: 2048

inputs:
  fastq_file:
    type:
      type: array
      items: File
    inputBinding:
      position: 1
      
baseCommand: [ fastqc, "--outdir", .]

outputs:
  report_files:
    type:
      type: array
      items: File
    outputBinding:
      # should be put in the working directory
       glob: "*.html"


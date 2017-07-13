class: CommandLineTool
id: "fastqc-ar"
label: "Fastqc v0.11.4"

cwlVersion: v1.0

#dct:creator:
#  id: "http://orcid.org/0000-0003-0342-8531"
#  foaf:name: Adelaide Rhodes
#  foaf:mbox: "mailto:adelaide.rhodes@gmail.com"

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/arhodes_cgrb_osu/dockstore-training-fastqc-ar:latest" 
      
hints:
  - class: ResourceRequirement
    coresMin: 1
    ramMin: 1000

inputs:
  fastq:
    type: File
    doc: "Fastq file to be analyzed"
    inputBinding:
      position: 1

outputs:
  zippedFile:
    type: File
    outputBinding:
      glob: '*.zip'
  report:
    type: Directory
    outputBinding:
      glob: .

baseCommand: ["fastqc", "--outdir", ".", "--extract"]

cwlVersion: v1.0
class: Workflow
inputs:
  somefile: File

outputs:
  classout:
    type: File
    outputSource: wordcount/output

steps:
  wordcount:
    run: wordcount.cwl
    in:
      somefile: somefile
    out: 
      - output


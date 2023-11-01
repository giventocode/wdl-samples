version 1.0
task md5 {
  input {
    File data_file
  }
  command {
    md5sum ${data_file} > md5.txt
  }
  output {
    File md5_hash = "md5.txt"
  }
}

workflow md5_workflow {
  call md5 { input: data_file = "data.txt" }
}
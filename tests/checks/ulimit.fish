#RUN: %fish %s | %filter-ctrlseqs

ulimit --core-size
#CHECK: {{unlimited|\d+}}
ulimit --core-size 0
ulimit --core-size
#CHECK: 0

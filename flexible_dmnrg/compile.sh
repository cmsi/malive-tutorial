sed -i -e "s/read_file == NULL/\!read_file/g" src/in_out.cc
sed -i -e "s/log_file == NULL/\!log_file/g" src/in_out.cc
./configure
make all

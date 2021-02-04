input_file=$1
output_file=$2
n_reps=$3

head -1 ${input_file} > ${output_file}

for (( i = 0; i < ${n_reps}; i++ ))
do 
    cat ${input_file} | sed "1 d" >> ${output_file}; 
done

#Get paths
set project_name [current_project]
set project_path [file normalize [get_property directory $project_name]/..]
set output_path "${project_path}/project.tcl"

#Write project
write_project_tcl -force $output_path

#Convert absolute to relative paths
set fp [open  $output_path r]
set file_data [read $fp]
close $fp

#For windows 
# set abs_path_list [regex -inline -all "C:/\[^\n\"\]*" $file_data]

#For linux
set abs_path_list [regex -inline -all "/home/\[^\n\"\]*" $file_data]

foreach abs_path $abs_path_list {
    puts $abs_path   
    set rel_path [exec python -c "import os; os.chdir('${project_path}'); print(os.path.relpath('${abs_path}'))"]
    regsub -all "\\\\" $rel_path "/" rel_path 
    regsub -all $abs_path $file_data $rel_path file_data
}

#Append number to project directory name if default project directory already exists 
regsub -all "create_project \\$\{_xil_proj_name_\} \./\\$\{_xil_proj_name_\}"  $file_data "create_project \${_xil_proj_name_} ./\${_xil_proj_dir_name_}" file_data
set file_data "set _xil_proj_dir_name_ ${project_name} \nset i 0 \nwhile {\[file exist \${_xil_proj_dir_name_}\]} {\n    set _xil_proj_dir_name_ ${project_name}_\${i}\n    set i \[expr {\${i} + 1}\]\n}\n${file_data}"

set fp [open  $output_path w]
puts $fp $file_data
close $fp

puts "\nWrite project completed. Output path: ${output_path}"
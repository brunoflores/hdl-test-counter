onbreak {resume}

if [file exists work] {
    vdel -all
}
vlib work

vlog counter.v tcounter.v
vopt +acc test_counter -o test_counter_opt
vsim test_counter_opt
add wave /test_counter/*
run 500ns
Green Video Experiments
=======================
This is a Julia package containing the annotation results of two experiments, where the shade of green changes over time in a video. The videos can be seen here:

 - **Task A**: https://youtu.be/hOPfInpDD9E
 - **Task B**: https://youtu.be/o3o5cUPBPAg


Installation
------------
Open and Julia REPL (v1.5 or greater) and do:
 
```julia
julia> ] 
pkg> add https://github.com/usc-sail/GreenVideoExperiments.jl
```
 
Usage
-----
Each experiment contains the following folders:

 - `annotations/`
 - `ground_truth/`

For simplicity, we have also added the data collected at 30Hz and downsamples to 10Hz.

This package provides the function `load`:

```julia
	load(task::AbstractString, type::AbstractString, frequency::AbstractString)

Load the data for a given task, its type (`annotations` or `ground_truth`), and its frequency (`10Hz` or `30Hz`).

Examples
========
using CSV
using DataFrames
using GreenVideoExperiments

julia> df = load("TaskA", "annotations", "30Hz");
```
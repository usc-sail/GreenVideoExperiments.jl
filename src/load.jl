"""
    load(task::AbstractString, type::AbstractString, frequency::AbstractString)

Load the data for a given task, its type (`annotations` or `ground_truth`), and its frequency (`10Hz` or `30Hz`).

Examples
========

    julia> df = load("TaskA", "annotations", "30Hz");
"""
function load(task::AbstractString, type::AbstractString, frequency::AbstractString)
    @assert task in ["TaskA", "TaskB"]
    @assert type in ["annotations", "ground_truth"]
    @assert frequency in ["10Hz", "30Hz"]

    path = p"" / @__FILE__
    return CSV.read(parent(parent(path)) / "data" / task / type / string(frequency, ".csv"), DataFrame)
end
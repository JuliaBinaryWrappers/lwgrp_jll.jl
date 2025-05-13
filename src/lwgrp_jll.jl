# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule lwgrp_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("lwgrp")
JLLWrappers.@generate_main_file("lwgrp", UUID("15646b25-2db2-5811-aabe-7bb0d81fd3fd"))
end  # module lwgrp_jll

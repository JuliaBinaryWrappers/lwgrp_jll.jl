# Autogenerated wrapper script for lwgrp_jll for aarch64-apple-darwin-mpi+openmpi
export liblwgrp

using OpenMPI_jll
JLLWrappers.@generate_wrapper_header("lwgrp")
JLLWrappers.@declare_library_product(liblwgrp, "@rpath/liblwgrp.dylib")
function __init__()
    JLLWrappers.@generate_init_header(OpenMPI_jll, MPIPreferences)
    JLLWrappers.@init_library_product(
        liblwgrp,
        "lib/liblwgrp.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()

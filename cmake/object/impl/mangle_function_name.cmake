include_guard()
include(utility/set_return)

## Provides a unique identifier for a function
#
#  The goal of mangling a function name is to create a member whose name is
#  unlikely to collide with any other member.
#
# :param out: The identifier to hold the mangled name
# :param type: The type of the object getting the member function
# :param name: The name of the function.
function(_cpp_mangle_function_name _cOmfn_out _cOmfn_type _cOmfn_name)
    _cpp_set_return(${_cOmfn_out} _cpp_fxn_${_cOmfn_type}_${_cOmfn_name})
endfunction()

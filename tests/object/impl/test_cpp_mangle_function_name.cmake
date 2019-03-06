include(${CMAKE_TOOLCHAIN_FILE})
include(cpp_unit_test_helpers)
_cpp_setup_test_env("mangle_function_name")

_cpp_add_test(
TITLE "Basic usage"
"include(object/impl/mangle_function_name)"
"_cpp_mangle_function_name(test Object a_fxn)"
"_cpp_assert_equal(\"\${test}\" _cpp_fxn_Object_a_fxn)"
)

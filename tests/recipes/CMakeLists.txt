set(
    RECIPE_TESTS assemble_gh_url
                 autotools_conf_cmd
                 build_recipe_dispatch
                 find_from_config
                 find_from_module
                 find_recipe_dispatch
                 get_from_gh
                 get_recipe_dispatch
                 parse_gh_url
                 url_dispatcher
)

foreach(test_i ${RECIPE_TESTS})
    cpp_cmake_unit_test(${test_i})
endforeach()

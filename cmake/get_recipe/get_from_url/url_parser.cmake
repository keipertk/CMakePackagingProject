################################################################################
#                        Copyright 2018 Ryan M. Richard                        #
#       Licensed under the Apache License, Version 2.0 (the "License");        #
#       you may not use this file except in compliance with the License.       #
#                   You may obtain a copy of the License at                    #
#                                                                              #
#                  http://www.apache.org/licenses/LICENSE-2.0                  #
#                                                                              #
#     Unless required by applicable law or agreed to in writing, software      #
#      distributed under the License is distributed on an "AS IS" BASIS,       #
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   #
#     See the License for the specific language governing permissions and      #
#                        limitations under the License.                        #
################################################################################

## Parses the organization and repository out of a GitHub/GitLab URL
#
# This function will take a GitHub/GitLab URL of the form 
# ``gitxxx.com/org/repo`` and parse out the organization and repository. The 
# actual parsing is insensitive to whether or not generic prefixes like ``www.``
# and ``https://`` are present. The function will raise errors if an 
# organization or a repository is not present.
#
# :param org: The identifier to store the organization's name under.
# :param repo: The identifier to store the repository's name under.
# :param url: The URL that we are parsing.
function(_cpp_url_parser _cup_org _cup_repo _cup_url)
    string(REGEX MATCH "git...\\.com/([^/]*)/([^/]*)" "" "${_cup_url}")
    set(${_cup_org} "${CMAKE_MATCH_1}")
    set(${_cup_repo} "${CMAKE_MATCH_2}")

    _cpp_is_empty(_cup_dont_have_org ${_cup_org})
    if(_cup_dont_have_org)
        _cpp_error(
                "URL: ${_cup_url} does not appear to contain an organization or "
                "user. Troubleshooting: ensure URL is of the form "
                "gitxxx.com/<organization>/<repo>."
        )
    endif()
    _cpp_is_empty(_cup_dont_have_repo ${_cup_repo})
    if(_cup_dont_have_repo)
        _cpp_error(
                "URL: ${_cup_url} does not appear to contain a repository. "
                "Troubleshooting: ensure URL is of the form "
                "github.com/<organization>/<repo>."
        )
    endif()

    _cpp_set_return(${_cup_org} ${${_cup_org}})
    _cpp_set_return(${_cup_repo} ${${_cup_repo}})
endfunction()

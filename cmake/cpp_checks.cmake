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

#Note: Use False=0 and True=1 not FALSE/OFF/TRUE/ON otherwise if statements
#won't recognize the return's contents as boolean without a CMake policy being
#set.

include(logic/is_defined)
include(logic/is_not_defined)
include(logic/is_empty)
include(logic/is_not_empty)
include(logic/contains)
include(logic/does_not_contain)
include(logic/xor)
include(logic/is_target)
include(logic/is_not_target)
include(logic/negate)
include(logic/exists)
include(logic/does_not_exist)
include(logic/is_directory)
include(logic/is_not_directory)
include(logic/are_equal)
include(logic/are_not_equal)
include(logic/is_list)
include(logic/is_not_list)


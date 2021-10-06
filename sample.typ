# GNU Typist - improved typing tutor program for UNIX systems
# Copyright (C) 1998  Simon Baldwin (simonb@sco.com)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

#------------------------------------------------------------------------------
# Series Z
#------------------------------------------------------------------------------
G:_Z_MENU
*:_Z_NO_MENU

#------------------------------------------------------------------------------
# Lesson Z1
#------------------------------------------------------------------------------
*:Z1
*:_Z_S_Z1
B:                            Lesson Z1

I:(1) Try this:
*:_Z_R_L1
D:abc
 
I:(2) Or this:
*:_Z_R_L2
D:~#}} {}@ }}~~{ @{{}# @{{' ~'@#~ '@' '#'#~ '{{# ~~#{ {}@'{ {@} @#@ {{' '{}}' '#{ ~}@~
 :}@}~ }{{ ~{''} '#{ ~'@' @{~ ~}@'~ }{#~@ #{} }{}@@ }'@~@ {}{{ '@'{# }~} }'# {~~ {@}
 :~'@} {#@' '{#~} @{'#@ @{~~ @}~~ {{@~ '#{ ~@{' #'{@@ @{' }~'~@ @#@}# }~{ ''~ #'~{}
 :~{'~{ ~#@} #{@ ~@'# }~{}~ '{}' {~{}} '@{~} }#}' {}~~{ {}#@ {{{ }'} ~}#@ }'~#{ @'~
 :}}}~@ '}}# ~~# }}{'@ {@}~' #~'{ {~}#} ~@'{ {'# ~#{'@ @{} @@@{ {~{@# ~}'#} #}}@@ '~}

G:_Z_E_Z1



#------------------------------------------------------------------------------
# Lesson series Z jump tables
#------------------------------------------------------------------------------
*:_Z_E_Z1
G:_Z_MENU

#------------------------------------------------------------------------------
# Lesson series Z menu
#------------------------------------------------------------------------------
*:_Z_MENU
B:                     Typing lessons
M: UP=_EXIT "The Z series contains the following lesson"
 :_Z_S_Z1  "Lesson Z1"
*:_Z_EXIT
#------------------------------------------------------------------------------

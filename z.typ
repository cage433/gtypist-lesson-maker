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
D:has half hag gad gash glass sash ash slash shall flash
 :had hall gas gaff gall glad dash ask slag shad ah

G:_Z_E_Z1

#------------------------------------------------------------------------------
# Lesson Z2
#------------------------------------------------------------------------------
*:Z2
*:_Z_S_Z2
B:                            Lesson Z2

I:(1) Familiarize yourself with the top row and between the index fingers:
*:_Z_R_L3
D:juj kik lol ;p; jyj
 :frf ded sws aqa ftf

I:(2) Some words:
*:_Z_R_L4
D:jug part ye aqua their hearty dry great why whose youth
 :kit free use type last lower drug light wheat proper your
 :lot dear its rear were pretty grip quiet where proud yellow
 :hear sweep old easy writer fresh group equip who please yes

I:(3) Now for the bottom row:
*:_Z_R_L5
D:jmj k,k l.l ;/; jnj
 :fvf dcd sxs aza fbf

I:(4) Some words:
*:_Z_R_L6
D:man come body vacant many tax ribbon lining believing
 :name can beam make examine none native baby commission
 :vain sex not cancel even mention woman brick quicken
 :become zero cave lazy benzine opening very branch textile

G:_Z_E_Z2


#------------------------------------------------------------------------------
# Lesson series Z jump tables
#------------------------------------------------------------------------------
*:_Z_E_Z1
Q: Do you want to continue to lesson Z2 [Y/N] ? 
N:_Z_MENU
G:_Z_S_Z2
*:_Z_E_Z2
G:_Z_MENU

#------------------------------------------------------------------------------
# Lesson series Z menu
#------------------------------------------------------------------------------
*:_Z_MENU
B:                     QWERTY Review lessons
M: UP=_EXIT "The Z series contains the following 13 lessons"
 :_Z_S_Z1  "Lesson Z1     Home row"
 :_Z_S_Z2  "Lesson Z2     Other letters"
*:_Z_EXIT
#------------------------------------------------------------------------------

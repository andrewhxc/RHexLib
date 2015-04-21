 #
 # This file is part of RHexLib, 
 #
 # Copyright (c) 2001 The University of Michigan, its Regents,
 # Fellows, Employees and Agents. All rights reserved, and distributed as
 # free software under the following license.
 # 
 #  Redistribution and use in source and binary forms, with or without
 # modification, are permitted provided that the following conditions are
 # met:
 # 
 # 1) Redistributions of source code must retain the above copyright
 # notice, this list of conditions, the following disclaimer and the
 # file called "CREDITS" which accompanies this distribution.
 # 
 # 2) Redistributions in binary form must reproduce the above copyright
 # notice, this list of conditions, the following disclaimer and the file
 # called "CREDITS" which accompanies this distribution in the
 # documentation and/or other materials provided with the distribution.
 # 
 # 3) Neither the name of the University of Michigan, Ann Arbor or the
 # names of its contributors may be used to endorse or promote products
 # derived from this software without specific prior written permission.
 # 
 # THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 # "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 # LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 # A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE REGENTS OR
 # CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 # EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 # PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 # PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 # LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 # NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 # SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 ######################################################################
 # $Id: tooldefs.mk,v 1.2 2001/07/12 17:14:10 ulucs Exp $
 #
 # Makefile definitions for various command line tools
 #
 # Created       : Uluc Saranli, 11/16/2000
 # Last Modified : Uluc Saranli, 06/27/2001
 #
 ######################################################################

UNAME = $(shell uname)

ifeq ($(UNAME), Linux)
# Definitions for Linux compilation

CC = gcc
CXX = g++
CPP = gcc -E
CMM = gcc -MM
AR = ar
RANLIB = ranlib
MAKE = make
MAKEDEP = makedepend
LN = ln -sf
STRIP = strip
RM = rm
SED = sed
MV = mv
CD = cd
WC = wc
TAR = tar
GZIP = gzip
SORT = sort
ECHO = echo
SHELL=/bin/bash

endif

ifeq ($(UNAME), QNX)
# Definitions for QNX compilation

CC = cc
CXX = cc
CPP = gcc -E
CMM = gcc -MM
AR = ar
RANLIB = ranlib
MAKE = make
MAKEDEP = makedepend
LN = ln -sf
STRIP = wstrip
RM = rm
SED = sed
MV = mv
CD = cd
WC = wc
TAR = tar
GZIP = gzip
SORT = sort
ECHO = echo
SHELL=/usr/local/bin/bash

endif


BUILD = $(ROOT)/../base/build
OBJROOT = $(ROOT)/obj
BINROOT = $(ROOT)/bin
SPEC = $(ROOT)/src/Trusted/Spec

BEAT_EXE      = $(BINROOT)/beat.exe
BOOGIEASM_EXE = $(BINROOT)/boogieasm.exe
BEAT          = mono $(BEAT_EXE)
BOOGIEASM     = mono $(BOOGIEASM_EXE)
BOOGIE        = boogie
MKDIR         = mkdir -p

all: project

nucleus:
	make -C src/Checked/Nucleus

project: nucleus

.PHONY: all project nucleus

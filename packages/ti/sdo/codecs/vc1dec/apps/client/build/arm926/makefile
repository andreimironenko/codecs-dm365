ROOTDIR = ./
TARGET = vc1vdec

REL_LIB = $(TARGET)-r.a
REL_BIN = $(TARGET)-r

ALG_LIB1 = ../../../../lib/vc1vdec_ti_arm926.a
ALG_LIB2 = ../../../../lib/dma_ti_dm365.a 
#ALG_LIB3 = memutils_std.a9t

include $(ROOTDIR)/rules.make

CGTOOLS = $(MVTOOL_DIR)
XDAIS_INSTALL_DIR = $(FC_INSTALL_DIR)/fctools
EDMA3_LLD_ROOT = $(FC_INSTALL_DIR)/fctools

#XDC_PATH = $(FC_LINUXUTILS_INSTALL_DIR)/packages;$(XDAIS_INSTALL_DIR)/packages;$(FC_INSTALL_DIR)/packages;$(FC_INSTALL_DIR)/examples;$(EDMA3_LLD_ROOT)/packages;
XDC_PATH = $(XDAIS_INSTALL_DIR)/packages;$(FC_INSTALL_DIR)/packages;$(FC_INSTALL_DIR)/examples;$(EDMA3_LLD_ROOT)/packages;$(CE_INSTALL_DIR)/packages;$(CE_INSTALL_DIR)/cetools/packages;

#Configuro Changes
#Base name of app's config script - This needs to externally specified while
#building DVTB
XDCTARGET = gnu.targets.MVArm9
XDCPLATFORM = ti.platforms.evmDM365
#XDCPLATFORM = ti.platforms.simDM365

#Configuro generated files
XDC_COMPILER_FILE = $(CONFIGPKG)/compiler.opt
XDC_LINKER_FILE = $(CONFIGPKG)/linker.cmd
CONFIGPKG = vc1vdec_ti_dm365testapp_linux

#Path to Configuro utility
CONFIGURO = XDCPATH="$(XDC_PATH)" $(XDC_INSTALL_DIR)/xs xdc.tools.configuro

C_FLAGS += -g -o3 -D"_ARM926" -D"_TASK_PART" -D"ON_LINUX" -D"DM510_IPC_INTC_ENABLE" -U"ENABLE_CACHE" -D"NO_RCV_HEADER_PARSING" -D"ARM968_BOOTING" -D"DMA_ENABLE" -U"MC_IC_WORK_AROUND"

INCLUDES += -I../../test/inc -I../../../inc -I../../../../dma/inc -I../../../../csl/arm/include -I../../../../../../csl/arm/include \
-I../../../../csl/kld/include -I../../../../../../csl/kld/include -I $(LINUXKERNEL_INSTALL_DIR)/include -I $(XDAIS_INSTALL_DIR)/packages/ti/xdais/include

LD_LIBS += -lpthread $(EDITLINE_LIB) -lcurses -lstdc++ $(ALG_LIB1) $(ALG_LIB2) 
#$(ALG_LIB2) $(ALG_LIB3) $(ALG_LIB4) $(ALG_LIB5)
AR_FLAGS += -r 

CC = $(MVTOOL_PREFIX)gcc $(INCLUDES) $(C_FLAGS) $(shell cat $(XDC_COMPILER_FILE)) -c
AR = $(MVTOOL_PREFIX)ar
LN = $(MVTOOL_PREFIX)gcc

REL_FLAGS =

SOURCES = $(wildcard *.c)

REL_OBJ = $(SOURCES:%.c=release/%.o)

OBJECTS = alg_control.o alg_create.o alg_malloc.o buffermanager.o vc1vdec.o  vc1vdec_ti_testappconfigparser.o    \
	 crc.o  vc1vdec_ti_arm926testapp.o 
OBJECTS1 = ./release/buffermanager.o ./release/crc.o ./release/vc1vdec_ti_api.o ./release/vc1vdec_ti_testappconfigparser.o ./release/testapp_inthandler.o ./release/testapp_intvecs.o  ./release/testapp_mmutable.o  testapp_intvecs.o testapp_mmutable.o testapp_inthandler.o testapp_arm926intc.o

all:	$(REL_BIN)

#Dependency on Config package
$(XDC_COMPILER_FILE) $(XDC_LINKER_FILE) : $(CONFIGPKG)

#Config package dependency
$(CONFIGPKG) : $(CONFIGPKG).cfg
	@mkdir -p release
	$(CONFIGURO) -c $(MVTOOL_DIR) -o $(CONFIGPKG) -t $(XDCTARGET) -p $(XDCPLATFORM) $(CONFIGPKG).cfg
	
#$(REL_LIB): $(REL_OBJ)
#	$(AR) $(AR_FLAGS) $(REL_LIB) $(REL_OBJ)

$(REL_OBJ):	release/%.o: %.c $(XDC_COMPILER_FILE)
	@mkdir -p release
	$(CC) $(C_FLAGS) $(XDC_INCLUDES) $(REL_FLAGS) -o $@ $<


buffermanager.o:
	$(CC) $(C_FLAGS) $(XDC_INCLUDES) $(REL_FLAGS) -o buffermanager.o  ../../test/src/buffermanager.c 
crc.o:
	$(CC) $(C_FLAGS) $(XDC_INCLUDES) $(REL_FLAGS) -o crc.o  ../../test/src/crc.c 
alg_control.o:
	$(CC) $(C_FLAGS) $(XDC_INCLUDES) $(REL_FLAGS) -o alg_control.o  ../../test/src/alg_control.c
alg_create.o:
	$(CC) $(C_FLAGS) $(XDC_INCLUDES) $(REL_FLAGS) -o alg_create.o  ../../test/src/alg_create.c 
alg_malloc.o:
	$(CC) $(C_FLAGS) $(XDC_INCLUDES) $(REL_FLAGS) -o alg_malloc.o  ../../test/src/alg_malloc.c 
vc1vdec.o:
	$(CC) $(C_FLAGS) $(XDC_INCLUDES) $(REL_FLAGS)  $(INCLUDES) $(DEFS) -o vc1vdec.o  ../../test/src/vc1vdec.c
#testapp_idma.o:
#	$(CC) $(C_FLAGS) $(XDC_INCLUDES) $(REL_FLAGS)  $(INCLUDES) $(DEFS) -o testapp_idma.o  ../../test/src/testapp_idma.c 
vc1vdec_ti_testappconfigparser.o:
	$(CC) $(C_FLAGS) $(XDC_INCLUDES) $(REL_FLAGS)  $(INCLUDES) $(DEFS) -o vc1vdec_ti_testappconfigparser.o   ../../test/src/vc1vdec_ti_testappconfigparser.c 
vc1vdec_ti_arm926testapp.o:
	$(CC) $(C_FLAGS) $(XDC_INCLUDES) $(REL_FLAGS)  $(INCLUDES) $(DEFS) -o vc1vdec_ti_arm926testapp.o   ../../test/src/vc1vdec_ti_arm926testapp.c




$(REL_BIN): $(XDC_LINKER_FILE) $(OBJECTS) 
	$(LN) -o $@  $(OBJECTS)  $(LD_LIBS) $(XDC_LINKER_FILE)

clean::
	-rm -rf *.o
	-rm -rf $(REL_LIB)
	-rm -rf $(REL_BIN)
	-rm -rf $(CONFIGPKG)

copy:
	cp vc1vdec-r /home/dvsdkmmc/workdir/filesys_dm365/DM365Worspace/vc1linux

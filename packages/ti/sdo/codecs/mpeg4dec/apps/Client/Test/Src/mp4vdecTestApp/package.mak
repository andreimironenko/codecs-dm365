#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#

unexport MAKEFILE_LIST
override PKGDIR = mp4vdecTestApp
XDCINCS = -I. -I$(strip $(subst ;, -I,$(subst $(space),\$(space),$(XPKGPATH))))
XDCCFGDIR = package/cfg/

#
# The following dependencies ensure package.mak is rebuilt
# in the event that some included BOM script changes.
#
ifneq (clean,$(MAKECMDGOALS))
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/Utils.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/Utils.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/Executable.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/Executable.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/xmlgen2.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/xmlgen2.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/package.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/package.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/include/utils.tci:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/include/utils.tci
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/Linux86.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/Linux86.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/xdc.tci:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/xdc.tci
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/xmlgen.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/xmlgen.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/_gen.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/_gen.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/tools/configuro/template/custom.mak.exe.xdt:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/tools/configuro/template/custom.mak.exe.xdt
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/ITargetFilter.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/ITargetFilter.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/ITarget.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/ITarget.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/om2.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/om2.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/Mingw.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/Mingw.xs
package.mak: package.bld
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/MVArm9.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/MVArm9.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/Repository.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/Repository.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/UCArm9.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/UCArm9.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/services/io/File.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/services/io/File.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/package.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/package.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/services/global/Clock.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/services/global/Clock.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/tools/configuro/template/package.xs.xdt:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/tools/configuro/template/package.xs.xdt
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/PackageContents.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/PackageContents.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/tools/configuro/template/compiler.opt.xdt:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/tools/configuro/template/compiler.opt.xdt
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/template.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/template.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/services/io/package.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/services/io/package.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/IPackage.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/IPackage.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/Script.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/Script.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/package.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/package.xs
package.mak: config.bld
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/ITarget.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/ITarget.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/Library.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/Library.xs
/db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/BuildEnvironment.xs:
package.mak: /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/xdc/bld/BuildEnvironment.xs
endif

gnu.targets.MVArm9.rootDir ?= /opt/montavista/pro/devkit/arm/v5t_le
gnu.targets.packageBase ?= /db/swcoe_asp/DM360_Codecs/xdctools_3_15_00_10/packages/gnu/targets/
.PRECIOUS: $(XDCCFGDIR)/%.o470MV
.PHONY: all,470MV .dlls,470MV .executables,470MV test,470MV
all,470MV: .executables,470MV
.executables,470MV: .libraries,470MV
.executables,470MV: .dlls,470MV
.dlls,470MV: .libraries,470MV
.libraries,470MV: .interfaces
	@$(RM) $@
	@$(TOUCH) "$@"

.help::
	@$(ECHO) xdc test,470MV
	@$(ECHO) xdc .executables,470MV
	@$(ECHO) xdc .libraries,470MV
	@$(ECHO) xdc .dlls,470MV


all: .executables 
.executables: .libraries .dlls
.libraries: .interfaces

PKGCFGS := $(wildcard package.xs) package/build.cfg
.interfaces: package/package.xdc.inc package/package.defs.h package.xdc $(PKGCFGS)

-include package/package.xdc.dep
package/%.xdc.inc package/%_mp4vdecTestApp.c package/%.defs.h: %.xdc $(PKGCFGS)
	@$(MSG) generating interfaces for package mp4vdecTestApp" (because $@ is older than $(firstword $?))" ...
	$(XSRUN) -f xdc/services/intern/cmd/build.xs $(MK_IDLOPTS) -m package/package.xdc.dep -i package/package.xdc.inc package.xdc

.executables,470MV .executables: mp4vdecTestApp.x470MV

-include package/cfg/mp4vdecTestApp_x470MV.mak
ifneq (clean,$(MAKECMDGOALS))
-include package/cfg/mp4vdecTestApp_x470MV.dep
endif
package/cfg/mp4vdecTestApp_x470MV.o470MV : | package/cfg/mp4vdecTestApp_x470MV.xdl
mp4vdecTestApp.x470MV:
	$(RM) $@
	@$(MSG) lnk470MV $@ ...
	$(gnu.targets.MVArm9.rootDir)/bin/arm_v5t_le-gcc    -o $@ package/cfg/mp4vdecTestApp_x470MV.o470MV  package/cfg/mp4vdecTestApp_x470MV.xdl  -lstdc++ -L$(gnu.targets.MVArm9.rootDir)/armv5tl-montavista-linux-gnueabi/lib
	
mp4vdecTestApp.x470MV:LD_LIBRARY_PATH=


ifeq (,$(wildcard .libraries,470MV))
mp4vdecTestApp.x470MV package/cfg/mp4vdecTestApp_x470MV.c: .libraries,470MV
endif

package/cfg/mp4vdecTestApp_x470MV.c package/cfg/mp4vdecTestApp_x470MV.h package/cfg/mp4vdecTestApp_x470MV.xdl: override _PROG_NAME := mp4vdecTestApp.x470MV
package/cfg/mp4vdecTestApp_x470MV.c: package/cfg/mp4vdecTestApp_x470MV.cfg
mp4vdecTestApp.test test,470MV test: mp4vdecTestApp.x470MV.test

mp4vdecTestApp.x470MV.test:: mp4vdecTestApp.x470MV
ifeq (,$(_TESTLEVEL))
	@$(MAKE) -R -r --no-print-directory -f $(XDCROOT)/packages/xdc/bld/xdc.mak _TESTLEVEL=1 mp4vdecTestApp.x470MV.test
else
	@$(MSG) running $<  ...
	$(call EXEC.mp4vdecTestApp.x470MV, ) 
endif


clean:: clean,470MV
	-$(RM) package/cfg/mp4vdecTestApp_x470MV.cfg
	-$(RM) package/cfg/mp4vdecTestApp_x470MV.dep
	-$(RM) package/cfg/mp4vdecTestApp_x470MV.c
	-$(RM) package/cfg/mp4vdecTestApp_x470MV.xdc.inc

clean,470MV::
	-$(RM) mp4vdecTestApp.x470MV
	-$(RM) .tmp,mp4vdecTestApp.x470MV,*

%,copy:
	@$(if $<,,$(MSG) don\'t know how to build $*; exit 1)
	@$(MSG) cp $< $@
	$(RM) $@
	$(CP) $< $@
mp4vdecTestApp_x470MV.s470MV,copy : package/cfg/mp4vdecTestApp_x470MV.s470MV
mp4vdecTestApp_x470MV.o470MV,copy : package/cfg/mp4vdecTestApp_x470MV.o470MV

$(XDCCFGDIR)%.c $(XDCCFGDIR)%.h $(XDCCFGDIR)%.xdl: $(XDCCFGDIR)%.cfg .interfaces $(XDCROOT)/packages/xdc/cfg/Main.xs
	@$(MSG) "configuring $(_PROG_NAME) from $< ..."
	$(CONFIG) $(_PROG_XSOPTS) xdc.cfg $(_PROG_NAME) $(XDCCFGDIR)$*.cfg $(XDCCFGDIR)$*

.PHONY: release,mp4vdecTestApp
mp4vdecTestApp.tar: package/build.cfg
mp4vdecTestApp.tar: package/package.ext.xml
mp4vdecTestApp.tar: package/package.xdc.inc
mp4vdecTestApp.tar: package/package.bld.xml
mp4vdecTestApp.tar: package/package.rel.dot
ifneq (clean,$(MAKECMDGOALS))
-include package/rel/mp4vdecTestApp.tar.dep
endif
package/rel/mp4vdecTestApp/mp4vdecTestApp/package/package.rel.xml:

mp4vdecTestApp.tar: package/rel/mp4vdecTestApp.xdc.inc package/rel/mp4vdecTestApp/mp4vdecTestApp/package/package.rel.xml
	@$(MSG) making release file $@ "(because of $(firstword $?))" ...
	-$(RM) $@
	$(call MKRELTAR,package/rel/mp4vdecTestApp.xdc.inc,package/rel/mp4vdecTestApp.tar.dep)


release release,mp4vdecTestApp: all mp4vdecTestApp.tar
clean:: .clean
	-$(RM) mp4vdecTestApp.tar
	-$(RM) package/rel/mp4vdecTestApp.xdc.inc
	-$(RM) package/rel/mp4vdecTestApp.tar.dep

clean:: .clean
	-$(RM) .libraries .libraries,*
clean:: 
	-$(RM) .dlls .dlls,*
#
# The following clean rule removes user specified
# generated files or directories.
#

ifneq (clean,$(MAKECMDGOALS))
ifeq (,$(wildcard package))
    $(shell $(MKDIR) package)
endif
ifeq (,$(wildcard package/external))
    $(shell $(MKDIR) package/external)
endif
ifeq (,$(wildcard package/lib))
    $(shell $(MKDIR) package/lib)
endif
ifeq (,$(wildcard package/cfg))
    $(shell $(MKDIR) package/cfg)
endif
ifeq (,$(wildcard package/rel))
    $(shell $(MKDIR) package/rel)
endif
ifeq (,$(wildcard package/internal))
    $(shell $(MKDIR) package/internal)
endif
endif
clean::
	-$(RMDIR) package

include custom.mak

#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#

unexport MAKEFILE_LIST
override PKGDIR = ittiam/codecs/g711_enc/ce
XDCINCS = -I. -I$(strip $(subst ;, -I,$(subst $(space),\$(space),$(XPKGPATH))))
XDCCFGDIR = package/cfg/

#
# The following dependencies ensure package.mak is rebuilt
# in the event that some included BOM script changes.
#
ifneq (clean,$(MAKECMDGOALS))
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/UCArm9.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/UCArm9.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/ti/targets/MSP430.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/ti/targets/MSP430.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/ITarget.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/ITarget.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/arm/GCArmv7A.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/arm/GCArmv7A.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/_gen.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/_gen.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/include/utils.tci:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/include/utils.tci
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/Executable.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/Executable.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/ITargetFilter.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/ITargetFilter.xs
/home/ITTIAM/100200/audio_speech/release_process/release_out/g711_enc_2_0_00_production_dm365_mvl/packages-production/config.bld:
package.mak: /home/ITTIAM/100200/audio_speech/release_process/release_out/g711_enc_2_0_00_production_dm365_mvl/packages-production/config.bld
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/Linux86.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/Linux86.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/Mingw.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/Mingw.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/xmlgen.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/xmlgen.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/package.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/package.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/MVArm9.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/MVArm9.xs
package.mak: package.bld
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/template.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/template.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/Utils.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/Utils.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/ti/targets/package.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/ti/targets/package.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/package.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/package.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/package.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/package.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/Library.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/Library.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/IPackage.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/IPackage.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/xmlgen2.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/xmlgen2.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/xdc.tci:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/xdc.tci
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/services/global/Clock.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/services/global/Clock.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/arm/GCArmv6.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/gnu/targets/arm/GCArmv6.xs
/home/ITTIAM/100200/audio_speech/release_process/release_out/g711_enc_2_0_00_production_dm365_mvl/packages-production/user.bld:
package.mak: /home/ITTIAM/100200/audio_speech/release_process/release_out/g711_enc_2_0_00_production_dm365_mvl/packages-production/user.bld
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/om2.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/om2.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/BuildEnvironment.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/BuildEnvironment.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/PackageContents.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/PackageContents.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/services/global/Trace.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/services/global/Trace.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/Script.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/Script.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/Repository.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/Repository.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/ti/targets/ITarget.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/ti/targets/ITarget.xs
/home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/ITarget.xs:
package.mak: /home/dm365/dvsdk_2_10_01_18/xdctools_3_15_01_59/packages/xdc/bld/ITarget.xs
endif

all,470MV .libraries,470MV .dlls,470MV .executables,470MV test,470MV:;

all: .executables 
.executables: .libraries .dlls
.libraries: .interfaces

PKGCFGS := $(wildcard package.xs) package/build.cfg
.interfaces: package/package.xdc.inc package/package.defs.h package.xdc $(PKGCFGS)

-include package/package.xdc.dep
package/%.xdc.inc package/%_ittiam.codecs.g711_enc.ce.c package/%.defs.h: %.xdc $(PKGCFGS)
	@$(MSG) generating interfaces for package ittiam.codecs.g711_enc.ce" (because $@ is older than $(firstword $?))" ...
	$(XSRUN) -f xdc/services/intern/cmd/build.xs $(MK_IDLOPTS) -m package/package.xdc.dep -i package/package.xdc.inc package.xdc

ifneq (clean,$(MAKECMDGOALS))
-include package/package.cfg.dep
endif

package/package.ext.xml: package/package.cfg.xdc.inc
package/package.cfg.xdc.inc: $(XDCROOT)/packages/xdc/cfg/cfginc.js package.xdc
	@$(MSG) generating schema include file list ...
	$(CONFIG) -f $(XDCROOT)/packages/xdc/cfg/cfginc.js ittiam.codecs.g711_enc.ce $@

test:;
%,copy:
	@$(if $<,,$(MSG) don\'t know how to build $*; exit 1)
	@$(MSG) cp $< $@
	$(RM) $@
	$(CP) $< $@

$(XDCCFGDIR)%.c $(XDCCFGDIR)%.h $(XDCCFGDIR)%.xdl: $(XDCCFGDIR)%.cfg .interfaces $(XDCROOT)/packages/xdc/cfg/Main.xs
	@$(MSG) "configuring $(_PROG_NAME) from $< ..."
	$(CONFIG) $(_PROG_XSOPTS) xdc.cfg $(_PROG_NAME) $(XDCCFGDIR)$*.cfg $(XDCCFGDIR)$*

.PHONY: release,ittiam_codecs_g711_enc_ce
ittiam_codecs_g711_enc_ce.tar: package/build.cfg
ittiam_codecs_g711_enc_ce.tar: package/package.cfg.xdc.inc
ittiam_codecs_g711_enc_ce.tar: package/package.ext.xml
ittiam_codecs_g711_enc_ce.tar: package/package.xdc.inc
ittiam_codecs_g711_enc_ce.tar: package/package.bld.xml
ittiam_codecs_g711_enc_ce.tar: package/package.rel.dot
ifneq (clean,$(MAKECMDGOALS))
-include package/rel/ittiam_codecs_g711_enc_ce.tar.dep
endif
package/rel/ittiam_codecs_g711_enc_ce/ittiam/codecs/g711_enc/ce/package/package.rel.xml:

ittiam_codecs_g711_enc_ce.tar: package/rel/ittiam_codecs_g711_enc_ce.xdc.inc package/rel/ittiam_codecs_g711_enc_ce/ittiam/codecs/g711_enc/ce/package/package.rel.xml
	@$(MSG) making release file $@ "(because of $(firstword $?))" ...
	-$(RM) $@
	$(call MKRELTAR,package/rel/ittiam_codecs_g711_enc_ce.xdc.inc,package/rel/ittiam_codecs_g711_enc_ce.tar.dep)


release release,ittiam_codecs_g711_enc_ce: all ittiam_codecs_g711_enc_ce.tar
clean:: .clean
	-$(RM) ittiam_codecs_g711_enc_ce.tar
	-$(RM) package/rel/ittiam_codecs_g711_enc_ce.xdc.inc
	-$(RM) package/rel/ittiam_codecs_g711_enc_ce.tar.dep

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
ifeq (,$(wildcard package/rel))
    $(shell $(MKDIR) package/rel)
endif
ifeq (,$(wildcard package/cfg))
    $(shell $(MKDIR) package/cfg)
endif
ifeq (,$(wildcard package/internal))
    $(shell $(MKDIR) package/internal)
endif
endif
clean::
	-$(RMDIR) package



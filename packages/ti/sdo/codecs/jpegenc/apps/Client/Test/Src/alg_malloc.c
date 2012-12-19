/* ========================================================================== */
/*                                                                            */
/*  TEXAS INSTRUMENTS, INC.                                                   */
/*                                                                            */
/*  NAME                                                                      */
/*     alg_malloc.c                                                           */
/*                                                                            */
/*  DESCRIPTION                                                               */
/*    This module implements an algorithm memory management "policy" in which */
/*  no memory is shared among algorithm objects.  Memory is, however          */
/*  reclaimed when objects are deleted.                                       */
/*                                                                            */
/*  preemption      sharing             object deletion                       */
/*  ----------      -------             ---------------                       */
/*  yes(*)          none                yes                                   */
/*                                                                            */
/*  Note 1: this module uses run-time support functions malloc() and free()   */
/*  to allocate and free memory.  Since these functions are *not* reentrant,  */
/*  either all object creation and deletion must be performed by a single     */
/*  thread or reentrant versions or these functions must be created.          */
/*                                                                            */
/*  COPYRIGHT NOTICES                                                         */
/*   Copyright (C) 1996, MPEG Software Simulation Group. All Rights           */
/*   Reserved.                                                                */
/*                                                                            */
/*   Copyright (c) 2001-2003 Texas Instruments Inc.  All rights reserved.     */
/*   Exclusive property of the Video & Imaging Products, Emerging End         */
/*   Equipment group of Texas Instruments India Limited. Any handling,        */
/*   use, disclosure, reproduction, duplication, transmission, or storage     */
/*   of any part of this work by any means is subject to restrictions and     */
/*   prior written permission set forth in TI's program license agreements    */
/*   and associated software documentation.                                   */
/*                                                                            */
/*   This copyright notice, restricted rights legend, or other proprietary    */
/*   markings must be reproduced without modification in any authorized       */
/*   copies of any part of this work.  Removal or modification of any part    */
/*   of this notice is prohibited.                                            */
/*                                                                            */
/*   U.S. Patent Nos. 5,283,900  5,392,448                                    */
/* -------------------------------------------------------------------------- */
/*            Copyright (c) 2003 Texas Instruments, Incorporated.             */
/*                           All Rights Reserved.                             */
/* ========================================================================== */
/* "@(#) XDAS 2.12 05-21-01 (__imports)" */

/* -------------------------------------------------------------------------- */
/* Assigning text section to allow better control on placing function in      */
/* memory of our choice and our alignment. The details about placement of     */
/* these section can be obtained from the linker command file "mpeg4enc.cmd". */
/* -------------------------------------------------------------------------- */
#include <alg.h>

#include <stdlib.h>             /* malloc/free declarations */
#include <string.h>             /* memset declaration */

#include  "testFramework.h"     /*For custom allocation size for algorithm */
#ifdef LINUX
unsigned char *ExternalGlobalMemPoolBase;
unsigned char *ExternalGlobalMemPool;
#else
#pragma DATA_SECTION( ExternalGlobalMemPoolBase, ".ddr");
unsigned char  ExternalGlobalMemPoolBase[EXTERNAL_DATA_MEM_SIZE];  
unsigned char  *ExternalGlobalMemPool = ExternalGlobalMemPoolBase;    
#endif 
unsigned int externalDataMemorySize = EXTERNAL_DATA_MEM_SIZE;


unsigned char *pInternalDataMemory;
unsigned int internalDataMemorySize = INTERNAL_DATA_MEM_SIZE;
#if 1
Bool _ALG1_allocMemory(IALG_MemRec memTab[], Int n);
Void _ALG1_freeMemory(IALG_MemRec memTab[], Int n);

int allocateMemTabRequest(IALG_MemRec * memTab)
{
    if (memTab->space == IALG_EXTERNAL) {
        unsigned int alignBytes;
        alignBytes =
            (((unsigned int) ExternalGlobalMemPool +
              (memTab->alignment - 1)) & ~(memTab->alignment - 1));
        alignBytes -= (unsigned int) ExternalGlobalMemPool;
        ExternalGlobalMemPool += alignBytes;
        externalDataMemorySize -= alignBytes;
        if (externalDataMemorySize >= memTab->size) {
            /* allocate memory */
            memTab->base = ExternalGlobalMemPool;
            ExternalGlobalMemPool += memTab->size;
            externalDataMemorySize -= memTab->size;
	  memTab->size+= alignBytes;
        } else {
            memTab->base = 0;
        }
    } else {
        /* internal memory request */
        unsigned int alignBytes;
        alignBytes =
            (((unsigned int) pInternalDataMemory +
              (memTab->alignment - 1)) & ~(memTab->alignment - 1));
        if (alignBytes) {
            alignBytes -= (unsigned int) pInternalDataMemory;
            pInternalDataMemory += alignBytes;
            internalDataMemorySize -= alignBytes;
        }
        if (internalDataMemorySize >= memTab->size) {
            /* allocate memory */
            memTab->base = pInternalDataMemory;
            pInternalDataMemory += memTab->size;
            internalDataMemorySize -= memTab->size;
        } else {
            memTab->base = 0;
        }
    }
    return 0;
}                               /* allocateMemTabRequest */

int freeMemTabRequest(IALG_MemRec * memTab)
{
    if (memTab->space == IALG_EXTERNAL) {
        memTab->base = 0;
        ExternalGlobalMemPool -= memTab->size;
        externalDataMemorySize += memTab->size;
    } else {
        /* internal memory  free request. XXX see the code  below 
         * for the dangers of calling them as normal mallocs. Free is faked!!!  */
        memTab->base = 0;
        //pInternalDataMemory = internalDataMemory;
        internalDataMemorySize = INTERNAL_DATA_MEM_SIZE;
    }
    return 0;
}                               /* freeMemTabRequest */
#if 0


/*
 *  ======== ALG_activate ========
 */
Void ALG_activate(ALG_Handle alg)
{
    /* restore all persistant shared memory */
    ;                           /* nothing to do since memory allocation never shares any data */

    /* do app specific initialization of scratch memory */
    if (alg->fxns->algActivate != NULL) {
        alg->fxns->algActivate(alg);
    }
}

/*
 *  ======== ALG_deactivate ========
 */
Void ALG_deactivate(ALG_Handle alg)
{
    /* do app specific store of persistent data */
    if (alg->fxns->algDeactivate != NULL) {
        alg->fxns->algDeactivate(alg);
    }

    /* save all persistant shared memory */
    ;                           /* nothing to do since memory allocation never shares any data */

}

/*
 *  ======== ALG_exit ========
 */
Void ALG_exit(Void)
{
}

/*
 *  ======== ALG_init ========
 */
Void ALG_init(Void)
{
}

#endif
/*
 *  ======== _ALG_allocMemory ========
 */
Bool _ALG1_allocMemory(IALG_MemRec memTab[], Int n)
{
    Int i;

    for (i = 0; i < n; i++) {
	    /* XXX changing the code here, to change the memory allocator for
         * different requirements. */
        allocateMemTabRequest(&memTab[i]);
        /* memTab[i].base = (void *)myMemalign(memTab[i].alignment, memTab[i].size); */

        if (memTab[i].base == NULL) {
            _ALG1_freeMemory(memTab, i);
            return (FALSE);
        }
    }
	return (TRUE);
}


/*
 *  ======== _ALG_freeMemory ========
 */
Void _ALG1_freeMemory(IALG_MemRec memTab[], Int n)
{
    Int i;
    for (i = 0; i < n; i++) {
        if (memTab[i].base != NULL) {
            /* XXX changing code here too. to take care of internal memory
             * allocatiuons */
              freeMemTabRequest(&memTab[i]);
            /* myFree(memTab[i].base); */
        }
    }
}
#endif


/* ========================================================================== */
/* End of file : alg_malloc.c                                                 */
/* -------------------------------------------------------------------------- */
/*            Copyright (c) 2003 Texas Instruments, Incorporated.             */
/*                           All Rights Reserved.                             */
/* ========================================================================== */

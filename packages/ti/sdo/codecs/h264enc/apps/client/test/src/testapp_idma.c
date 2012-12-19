/** ===========================================================================
* @file testapp_idma.c
*
* @path $(PROJDIR)\src
*
* @brief This File contains function definitions and array declarations used 
*       for  initialising the DMA parameter strcuture. This DMA parameter 
*       strcuture is passed on to the decoder create function to initialise 
*       DMA object.
* =============================================================================
* Copyright (c) Texas Instruments Inc 2006, 2007
*
* Use of this software is controlled by the terms and conditions found
* in the license agreement under which this software has been supplied
**============================================================================*/
/* ------compilation control switches -------------------------*/
/***************************************************************
*  INCLUDE FILES                                                
****************************************************************/
/* ----- system and platform files ----------------------------*/
#if 1
#include <xdc/std.h>
#include <ti/xdais/xdas.h>
#endif
//#include <std.h>
//#include <xdas.h> 
/*-------program files ----------------------------------------*/
#include "idma_dm360.h"
 

/***************************************************************
*  EXTERNAL REFERENCES NOTE : only use if not found in header file
****************************************************************/
/*--------data declarations -----------------------------------*/
/*--------function prototypes ---------------------------------*/
/****************************************************************
*  PUBLIC DECLARATIONS Defined here, used elsewhere
****************************************************************/
/*--------data declarations -----------------------------------*/
XDAS_UInt32 edma_phy_to_lgl_map[64] = 
{
#if 0
    6,  7,  8,  9,  12, 20, 21, 22, 
    23, 24, 25, 26, 27, 28, 29, 30, 
    31, 34, 35, 36, 37, 55, 56, 57,
    58, 59, 0,  1,  2,  3,  4,  5, 
    10, 11, 13, 14, 15, 16, 17, 18,
    19, 32, 33, 38, 39, 40, 41, 42,
    43, 44, 45, 46, 47, 48, 49, 50,
    51, 52, 53, 54, 60, 61, 62, 63
#else
    4,  8,  5,  9,  12, 7,  6,  2, 
    3,  14,  15, 16, 17, 18, 19, 20, 
    21, 22, 25, 28, 32, 29, 27, 30,
    31, 35, 37, 24, 23, 34, 58, 57,
    10, 11, 13, 1, 59, 26, 56, 36,
    55,  0, 33, 38, 39, 40, 41, 42,
    43, 44, 45, 46, 47, 48, 49, 50,
    51, 52, 53, 54, 60, 61, 62, 63 
#endif
};

/*----------------------------------------------------------------------------*/
/* TCCs map for edma logical channels                                         */
/*----------------------------------------------------------------------------*/
XDAS_UInt32 edma_tcc_array[NUM_EDMA_LGL_CHANNELS] = 
{
#if 0
  6, 7, 8, 9, 12, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 34, 35,
  36, 37, 55, 56, 57, 58, 59, 0, 1, 2, 3, 4, 5
#else
    4,  8,  5,  9,  12, 7,  6,  2, 
    3,  14,  15, 16, 17, 18, 19, 20, 
    21, 22, 25, 28, 32, 29, 27, 30,
    31, 35, 37, 24, 23, 34, 58, 57

#endif
};

#if defined(ENABLE_QDMA_TRNFRS)
XDAS_UInt32 qdma_phy_to_lgl_map[8] = 
{
    0, 1, 2, 3, 4, 5, 6, 7
};
/*----------------------------------------------------------------------------*/
/* TCCs map for qdma logical channels                                         */
/*----------------------------------------------------------------------------*/
XDAS_UInt32 qdma_tcc_array[NUM_QDMA_LGL_CHANNELS] = 
{
    16, 17, 18, 19, 20, 21, 22, 23 
};
XDAS_UInt16         transfer_pending_qdma[8];
#endif
XDAS_UInt16         transfer_pending_edma[64];
/*--------function prototypes ---------------------------------*/
/****************************************************************
*  PRIVATE DECLARATIONS Defined here, used only here
****************************************************************/
/*--------data declarations -----------------------------------*/
/*--------function prototypes ---------------------------------*/
/*--------macros ----------------------------------------------*/
/*--------function definitions---------------------------------*/
/* =============================================================================
 *  @func     TestApp_SetDMAInitParams
 *      
 *  @desc     DMA Open routine
 *
 *  @param    IDMA_DM360_Params *DMAparams
 *            Pointer to DMA parameters structure.
 *
 *  @return   S32
 *            -ve value indicates error
 *  ============================================================================
 */

XDAS_Int32 TestApp_SetDMAInitParams (IDMA_DM360_Params *DMAparams)
{
    /*------------------------------------------------------------------------*/
    /* Mapping Client inputs to IDMA_DynamicParams so as to pass to the dec   */
    /*------------------------------------------------------------------------*/

    DMAparams->Num_Edma_Channels     = NUM_EDMA_LGL_CHANNELS;
    DMAparams->Total_Edma_Channels   = TOTAL_EDMA_CHANNELS;
    DMAparams->Edma_Tcc_Array        = edma_tcc_array;
    DMAparams->Edma_Phy_to_Lgl_Map   = edma_phy_to_lgl_map;
    DMAparams->Transfer_Pending_Edma = transfer_pending_edma;

#if defined(ENABLE_QDMA_TRNFRS)
    DMAparams->Num_Qdma_Channels     = NUM_QDMA_LGL_CHANNELS;
    DMAparams->Total_Qdma_Channels   = TOTAL_QDMA_CHANNELS;
    DMAparams->Qdma_Tcc_Array        = qdma_tcc_array;
    DMAparams->Qdma_Phy_to_Lgl_Map   = qdma_phy_to_lgl_map;
    DMAparams->Transfer_Pending_Qdma = transfer_pending_qdma;
#endif

    /*------------------------------------------------------------------------*/
    /* Taking input from the Client if he would set the Que TC MAp & QUE Pri  */
    /* or would use the defualt setting that is set in decoder lib            */
    /*------------------------------------------------------------------------*/
    DMAparams->Setque_Attr    = SETQUE_ATTR;
    DMAparams->Quetcmap       = _QUETCMAP;
    DMAparams->Quepri         = _QUEPRI;
    /*------------------------------------------------------------------------*/
    /*  Set up the params array for edma and qdma. In actual  scenario        */
    /*  this comes from DMAN3                                                 */
    /*  Assuming that DMAN3 returns param entries for edma in ascending       */
    /*  order and for qdma in the reverse order                               */
    /*  Note that in actual case the DMAN3 gives the param_entry array        */
    /*  here we assume that all param entries are sequential, which           */
    /*  may not be the case always                                            */
    /*  For now we will set the pending transfer array to zero. In actual     */
    /*  use case, DMAN3 provides the transfer_pending array                   */
    /*------------------------------------------------------------------------*/
    memset (DMAparams->Transfer_Pending_Edma, 0x0, sizeof (transfer_pending_edma));
#if defined(ENABLE_QDMA_TRNFRS)
    memset (DMAparams->Transfer_Pending_Qdma, 0x0, sizeof (transfer_pending_qdma));
#endif
    return 0;
}


/*!
*! Revision History
*! ================
*!
*! 31-May-2007 Vinay M K: Modified to comply with MMCodecs 
*!                      coding guidelines.
*! 17-May-2007  Vinay M K : Modified to make the function independent of codec 
*!                      type. 
*! 16-May-2007   Krishnakanth Rapaka : Initial draft and Added common interface
*!               for DMA and necessary changes.
*/

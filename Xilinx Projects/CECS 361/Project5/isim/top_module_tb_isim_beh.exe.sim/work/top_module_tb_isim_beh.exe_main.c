/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003124902421_2759085270_init();
    work_m_00000000002359761985_2203017034_init();
    work_m_00000000000235047151_0615400731_init();
    work_m_00000000001103032381_2943448091_init();
    work_m_00000000001723958271_2388550197_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001723958271_2388550197");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}

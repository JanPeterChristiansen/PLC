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

char *VL_P_2533777724;
char *IEEE_P_2592010699;
char *IEEE_P_3620187407;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004134447467_2073120511_init();
    xilinxcorelib_ver_m_00000000001358910285_0691677657_init();
    xilinxcorelib_ver_m_00000000001687936702_0040378097_init();
    xilinxcorelib_ver_m_00000000000456851583_3568640398_init();
    xilinxcorelib_ver_m_00000000001603977570_2887810530_init();
    work_m_00000000003617559063_2483414836_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    vl_p_2533777724_init();
    work_a_0595992924_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1350853198_3212880686_init();
    work_a_1008501705_3212880686_init();
    work_a_2164437731_3212880686_init();
    work_a_2580798118_2372691052_init();


    xsi_register_tops("work_a_2580798118_2372691052");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    VL_P_2533777724 = xsi_get_engine_memory("vl_p_2533777724");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}

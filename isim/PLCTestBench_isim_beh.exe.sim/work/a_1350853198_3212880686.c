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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/japem/Documents/repos/VHDL/PLC/Registers.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1350853198_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(60, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)4, 16U);
    t5 = (t0 + 4032);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(67, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)4, 16U);
    t5 = (t0 + 4096);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);

LAB6:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB8;

LAB10:
LAB9:    t1 = (t0 + 3952);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t1 = (t0 + 6592U);
    t7 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t1);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t7);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t12 = (t5 + t11);
    t13 = (t0 + 4032);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 16U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB3;

LAB5:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t1 = (t0 + 6608U);
    t7 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t1);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t7);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t12 = (t5 + t11);
    t13 = (t0 + 4096);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 16U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB6;

LAB8:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t18 = (t4 == (unsigned char)3);
    if (t18 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t2 = (t0 + 1192U);
    t12 = *((char **)t2);
    t2 = (t0 + 6592U);
    t7 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t12, t2);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0U + t10);
    t13 = (t0 + 4160);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 16U);
    xsi_driver_first_trans_delta(t13, t11, 16U, 0LL);
    goto LAB12;

}


extern void work_a_1350853198_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1350853198_3212880686_p_0};
	xsi_register_didat("work_a_1350853198_3212880686", "isim/PLCTestBench_isim_beh.exe.sim/work/a_1350853198_3212880686.didat");
	xsi_register_executes(pe);
}

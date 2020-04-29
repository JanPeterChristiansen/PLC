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
static const char *ng0 = "C:/Users/japem/Documents/repos/VHDL/PLC/ShiftRegister.vhd";
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_2720006528_1035706684(char *, char *, char *, char *, char *);


static void work_a_0595992924_3212880686_p_0(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t18;
    char *t19;

LAB0:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3072);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t9 = (15 - 15);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t0 + 3072);
    t8 = (t5 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 15U);
    xsi_driver_first_trans_delta(t5, 1U, 15U, 0LL);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4848U);
    t5 = (t0 + 4906);
    t12 = (t17 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 15;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t18 = (15 - 0);
    t9 = (t18 * 1);
    t9 = (t9 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t9;
    t3 = ieee_p_1242562249_sub_2720006528_1035706684(IEEE_P_1242562249, t2, t1, t5, t17);
    if (t3 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t8 = (t5 + 56U);
    t12 = *((char **)t8);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1352U);
    t8 = *((char **)t1);
    t9 = (15 - 14);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t8 + t11);
    t12 = (t0 + 3072);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 15U);
    xsi_driver_first_trans_delta(t12, 0U, 15U, 0LL);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t8 = (t5 + 56U);
    t12 = *((char **)t8);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 15U, 1, 0LL);
    goto LAB6;

LAB8:    xsi_set_current_line(46, ng0);
    t13 = (t0 + 3072);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_delta(t13, 0U, 1, 0LL);
    goto LAB9;

}


extern void work_a_0595992924_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0595992924_3212880686_p_0};
	xsi_register_didat("work_a_0595992924_3212880686", "isim/PLCTestBench_isim_beh.exe.sim/work/a_0595992924_3212880686.didat");
	xsi_register_executes(pe);
}

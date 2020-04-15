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
static const char *ng0 = "C:/Users/japem/Documents/repos/VHDL/PLC/InputSelect.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_1513392233_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4928);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);

LAB2:    t8 = (t0 + 4784);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1513392233_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4992);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB2:    t8 = (t0 + 4800);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1513392233_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5056);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 4816);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1513392233_3212880686_p_3(char *t0)
{
    char t22[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 7546);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 7548);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 7550);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 7552);
    t14 = xsi_mem_cmp(t12, t3, 2U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 7586);
    t4 = (t0 + 5120);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(57, ng0);

LAB19:    t2 = (t0 + 4832);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB20;

LAB1:    return;
LAB5:    xsi_set_current_line(58, ng0);
    t15 = (t0 + 7554);
    t17 = (t0 + 5120);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t15, 16U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB4;

LAB6:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5120);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 7570);
    t4 = (t0 + 5120);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7420U);
    t4 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t22, t3, t2);
    t6 = (t22 + 12U);
    t23 = *((unsigned int *)t6);
    t24 = (1U * t23);
    t25 = (16U != t24);
    if (t25 == 1)
        goto LAB15;

LAB16:    t7 = (t0 + 5120);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB14:;
LAB15:    xsi_size_not_matching(16U, t24, 0);
    goto LAB16;

LAB17:    t3 = (t0 + 4832);
    *((int *)t3) = 0;
    goto LAB2;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}

static void work_a_1513392233_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    static char *nl0[] = {&&LAB7, &&LAB7, &&LAB5, &&LAB6, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7};

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(64, ng0);

LAB10:    t2 = (t0 + 4848);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB5:    xsi_set_current_line(65, ng0);
    t5 = (t0 + 7602);
    t7 = (t0 + 5184);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB6:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5184);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 16U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 7618);
    t5 = (t0 + 5184);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB8:    t3 = (t0 + 4848);
    *((int *)t3) = 0;
    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}


extern void work_a_1513392233_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1513392233_3212880686_p_0,(void *)work_a_1513392233_3212880686_p_1,(void *)work_a_1513392233_3212880686_p_2,(void *)work_a_1513392233_3212880686_p_3,(void *)work_a_1513392233_3212880686_p_4};
	xsi_register_didat("work_a_1513392233_3212880686", "isim/ALUTestBench_isim_beh.exe.sim/work/a_1513392233_3212880686.didat");
	xsi_register_executes(pe);
}

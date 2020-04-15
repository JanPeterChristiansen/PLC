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
static const char *ng0 = "C:/Users/japem/Documents/repos/VHDL/PLC/OutputSelect.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3627894640_3212880686_p_0(char *t0)
{
    char t21[16];
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
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5146);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 5148);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 5150);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 5152);
    t14 = xsi_mem_cmp(t12, t3, 2U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 5154);
    t4 = (t0 + 3232);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(46, ng0);

LAB23:    t2 = (t0 + 3152);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB24;

LAB1:    return;
LAB5:    xsi_set_current_line(47, ng0);
    t15 = (t0 + 1512U);
    t16 = *((char **)t15);
    t15 = (t0 + 3232);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 16U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB4;

LAB6:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5008U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 5024U);
    t7 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t21, t3, t2, t6, t4);
    t9 = (t21 + 12U);
    t22 = *((unsigned int *)t9);
    t23 = (1U * t22);
    t24 = (16U != t23);
    if (t24 == 1)
        goto LAB15;

LAB16:    t10 = (t0 + 3232);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB4;

LAB7:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5008U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 5024U);
    t7 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t21, t3, t2, t6, t4);
    t9 = (t21 + 12U);
    t22 = *((unsigned int *)t9);
    t23 = (1U * t22);
    t24 = (16U != t23);
    if (t24 == 1)
        goto LAB17;

LAB18:    t10 = (t0 + 3232);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB4;

LAB8:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 5024U);
    t4 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t21, t3, t2);
    t6 = (t21 + 12U);
    t22 = *((unsigned int *)t6);
    t23 = (1U * t22);
    t24 = (16U != t23);
    if (t24 == 1)
        goto LAB19;

LAB20:    t7 = (t0 + 3232);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB14:;
LAB15:    xsi_size_not_matching(16U, t23, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(16U, t23, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(16U, t23, 0);
    goto LAB20;

LAB21:    t3 = (t0 + 3152);
    *((int *)t3) = 0;
    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}


extern void work_a_3627894640_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3627894640_3212880686_p_0};
	xsi_register_didat("work_a_3627894640_3212880686", "isim/ALUTestBench_isim_beh.exe.sim/work/a_3627894640_3212880686.didat");
	xsi_register_executes(pe);
}

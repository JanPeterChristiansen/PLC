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
static const char *ng0 = "C:/Users/japem/Documents/repos/VHDL/PLC/PLC.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2164437731_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    unsigned char t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7432);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(98, ng0);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t4 = (t0 + 12048U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t3, t5, t4, 1);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (64U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 7576);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 64U);
    xsi_driver_first_trans_fast(t11);
    goto LAB3;

LAB5:    xsi_size_not_matching(64U, t9, 0);
    goto LAB6;

}

static void work_a_2164437731_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(140, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t1 = (t0 + 12064U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t4);
    t7 = (28U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 7640);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 28U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 7448);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2164437731_3212880686_p_2(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(141, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t1 = (t0 + 12064U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t3, t4, t1, 1);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t3);
    t7 = (t6 - 0);
    t8 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t6);
    t9 = (28U * t8);
    t10 = (0 + t9);
    t11 = (t2 + t10);
    t12 = (t0 + 7704);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t11, 28U);
    xsi_driver_first_trans_fast(t12);

LAB2:    t17 = (t0 + 7464);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2164437731_3212880686_p_3(char *t0)
{
    char t11[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;

LAB0:    xsi_set_current_line(146, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7480);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(147, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(150, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(156, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t1 = (t0 + 12064U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t3, t1, 1);
    t7 = (t11 + 12U);
    t12 = *((unsigned int *)t7);
    t13 = (1U * t12);
    t2 = (4U != t13);
    if (t2 == 1)
        goto LAB16;

LAB17:    t8 = (t0 + 7832);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast(t8);

LAB14:
LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(148, ng0);
    t3 = (t0 + 7768);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

LAB8:    xsi_set_current_line(151, ng0);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t1 = (t0 + 12064U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t4, t1, 2);
    t8 = (t11 + 12U);
    t12 = *((unsigned int *)t8);
    t13 = (1U * t12);
    t6 = (4U != t13);
    if (t6 == 1)
        goto LAB11;

LAB12:    t9 = (t0 + 7832);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB9;

LAB11:    xsi_size_not_matching(4U, t13, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(154, ng0);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t12 = (27 - 3);
    t13 = (t12 * 1U);
    t17 = (0 + t13);
    t1 = (t4 + t17);
    t7 = (t0 + 7832);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    memcpy(t14, t1, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB14;

LAB16:    xsi_size_not_matching(4U, t13, 0);
    goto LAB17;

}

static void work_a_2164437731_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(189, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = (24 - 63);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 7896);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_delta(t8, 7U, 1, 0LL);

LAB2:    t13 = (t0 + 7496);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2164437731_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(190, ng0);

LAB3:    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t2 = t1;
    memset(t2, (unsigned char)2, 7U);
    t3 = (t0 + 7960);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_delta(t3, 0U, 7U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2164437731_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2164437731_3212880686_p_0,(void *)work_a_2164437731_3212880686_p_1,(void *)work_a_2164437731_3212880686_p_2,(void *)work_a_2164437731_3212880686_p_3,(void *)work_a_2164437731_3212880686_p_4,(void *)work_a_2164437731_3212880686_p_5};
	xsi_register_didat("work_a_2164437731_3212880686", "isim/PLCTestBench_isim_beh.exe.sim/work/a_2164437731_3212880686.didat");
	xsi_register_executes(pe);
}

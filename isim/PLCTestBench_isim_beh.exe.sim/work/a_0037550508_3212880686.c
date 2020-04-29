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
static const char *ng0 = "C:/Users/japem/Documents/repos/VHDL/PLC/FIFOBuffer.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0037550508_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6208);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB2:    t8 = (t0 + 6064);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0037550508_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(86, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6272);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB2:    t8 = (t0 + 6080);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0037550508_3212880686_p_2(char *t0)
{
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

LAB0:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6096);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(94, ng0);
    t3 = (t0 + 2152U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6336);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6400);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(95, ng0);
    t3 = (t0 + 6336);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 6400);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void work_a_0037550508_3212880686_p_3(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned char t17;
    char *t18;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 6112);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(112, ng0);
    t4 = (t0 + 6464);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(124, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 10188U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t2, t1, 1);
    t5 = (t0 + 2472U);
    t6 = *((char **)t5);
    t5 = (t0 + 10188U);
    t9 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t13, t6, t5);
    if (t9 == 1)
        goto LAB18;

LAB19:    t3 = (unsigned char)0;

LAB20:    if (t3 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 6592);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB16:    goto LAB2;

LAB4:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 6464);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(132, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 10188U);
    t4 = (t0 + 2472U);
    t5 = *((char **)t4);
    t4 = (t0 + 10188U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    t9 = (!(t3));
    if (t9 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(135, ng0);
    t1 = (t0 + 6592);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB22:    goto LAB2;

LAB5:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 6528);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 6U);
    xsi_driver_first_trans_fast(t1);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(115, ng0);
    t2 = xsi_get_transient_memory(6U);
    memset(t2, 0, 6U);
    t5 = t2;
    memset(t5, (unsigned char)2, 6U);
    t6 = (t0 + 6528);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 6U);
    xsi_driver_first_trans_fast(t6);
    goto LAB9;

LAB11:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t1 = (t0 + 10188U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t4, t1, 1);
    t6 = (t13 + 12U);
    t14 = *((unsigned int *)t6);
    t15 = (1U * t14);
    t10 = (6U != t15);
    if (t10 == 1)
        goto LAB13;

LAB14:    t7 = (t0 + 6528);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t5, 6U);
    xsi_driver_first_trans_fast(t7);
    goto LAB9;

LAB13:    xsi_size_not_matching(6U, t15, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(125, ng0);
    t7 = (t0 + 6592);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t16 = (t12 + 56U);
    t18 = *((char **)t16);
    *((unsigned char *)t18) = (unsigned char)1;
    xsi_driver_first_trans_fast(t7);
    goto LAB16;

LAB18:    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t10 = *((unsigned char *)t8);
    t17 = (t10 == (unsigned char)3);
    t3 = t17;
    goto LAB20;

LAB21:    xsi_set_current_line(133, ng0);
    t6 = (t0 + 6592);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)0;
    xsi_driver_first_trans_fast(t6);
    goto LAB22;

}

static void work_a_0037550508_3212880686_p_4(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    static char *nl0[] = {&&LAB19, &&LAB20};

LAB0:    xsi_set_current_line(145, ng0);
    t1 = (t0 + 6656);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(147, ng0);
    t1 = (t0 + 992U);
    t6 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t6 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(158, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB2:    xsi_set_current_line(148, ng0);
    t2 = (t0 + 3272U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)0);
    if (t9 == 1)
        goto LAB8;

LAB9:    t7 = (unsigned char)0;

LAB10:    if (t7 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t8 = (t7 == (unsigned char)1);
    if (t8 == 1)
        goto LAB13;

LAB14:    t6 = (unsigned char)0;

LAB15:    if (t6 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 6720);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t12 = *((char **)t5);
    memcpy(t12, t2, 6U);
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 10259);
    t12 = (t0 + 6720);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 6U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB8:    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    t7 = t11;
    goto LAB10;

LAB11:    xsi_set_current_line(151, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 10188U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t4, t1, 1);
    t12 = (t17 + 12U);
    t18 = *((unsigned int *)t12);
    t19 = (1U * t18);
    t11 = (6U != t19);
    if (t11 == 1)
        goto LAB16;

LAB17:    t13 = (t0 + 6720);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t5, 6U);
    xsi_driver_first_trans_fast(t13);
    goto LAB6;

LAB13:    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t9 = *((unsigned char *)t3);
    t10 = (t9 == (unsigned char)3);
    t6 = t10;
    goto LAB15;

LAB16:    xsi_size_not_matching(6U, t19, 0);
    goto LAB17;

LAB18:    t1 = (t0 + 6128);
    *((int *)t1) = 1;

LAB1:    return;
LAB19:    xsi_set_current_line(160, ng0);
    t3 = (t0 + 6784);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t12 = (t5 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(161, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 10188U);
    t3 = (t0 + 2472U);
    t4 = *((char **)t3);
    t3 = (t0 + 10188U);
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    t7 = (!(t6));
    if (t7 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(164, ng0);
    t1 = (t0 + 6656);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB22:    goto LAB18;

LAB20:    xsi_set_current_line(168, ng0);
    t1 = (t0 + 6784);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(169, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 10188U);
    t3 = (t0 + 2472U);
    t4 = *((char **)t3);
    t3 = (t0 + 10188U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t4, t3, 1);
    t7 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t17);
    if (t7 == 1)
        goto LAB27;

LAB28:    t6 = (unsigned char)0;

LAB29:    if (t6 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(172, ng0);
    t1 = (t0 + 6656);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB25:    goto LAB18;

LAB21:    xsi_set_current_line(162, ng0);
    t5 = (t0 + 6656);
    t12 = (t5 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)1;
    xsi_driver_first_trans_fast(t5);
    goto LAB22;

LAB24:    xsi_set_current_line(170, ng0);
    t12 = (t0 + 6656);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    *((unsigned char *)t20) = (unsigned char)0;
    xsi_driver_first_trans_fast(t12);
    goto LAB25;

LAB27:    t12 = (t0 + 1672U);
    t13 = *((char **)t12);
    t8 = *((unsigned char *)t13);
    t9 = (t8 == (unsigned char)3);
    t6 = t9;
    goto LAB29;

}


extern void work_a_0037550508_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0037550508_3212880686_p_0,(void *)work_a_0037550508_3212880686_p_1,(void *)work_a_0037550508_3212880686_p_2,(void *)work_a_0037550508_3212880686_p_3,(void *)work_a_0037550508_3212880686_p_4};
	xsi_register_didat("work_a_0037550508_3212880686", "isim/PLCTestBench_isim_beh.exe.sim/work/a_0037550508_3212880686.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "C:/Users/japem/Documents/repos/VHDL/PLC/SerialIO.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1450319583_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned char t16;
    char *t17;

LAB0:    xsi_set_current_line(146, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t3 = (t0 + 5472);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(147, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t3 = (t0 + 5536);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(150, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 9668U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t10 = (t9 - 15);
    t11 = (t10 * -1);
    t12 = (1 * t11);
    t13 = (0U + t12);
    t4 = (t0 + 5472);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    *((unsigned char *)t14) = t8;
    xsi_driver_first_trans_delta(t4, t13, 1, 0LL);
    xsi_set_current_line(151, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 9668U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t10 = (t9 - 15);
    t11 = (t10 * -1);
    t12 = (1 * t11);
    t13 = (0U + t12);
    t4 = (t0 + 5536);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    *((unsigned char *)t14) = t8;
    xsi_driver_first_trans_delta(t4, t13, 1, 0LL);
    xsi_set_current_line(152, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 9668U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t10 = (t9 - 15);
    t11 = (t10 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t9);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t4 = (t2 + t13);
    t8 = *((unsigned char *)t4);
    t5 = (t0 + 5600);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t8;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(153, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 9668U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t10 = (t9 - 15);
    t11 = (t10 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t9);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t4 = (t2 + t13);
    t8 = *((unsigned char *)t4);
    t5 = (t0 + 5664);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t8;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(154, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 9668U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t10 = (t9 - 15);
    t11 = (t10 * -1);
    t12 = (1 * t11);
    t13 = (0U + t12);
    t4 = (t0 + 5728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    *((unsigned char *)t14) = t8;
    xsi_driver_first_trans_delta(t4, t13, 1, 0LL);
    xsi_set_current_line(155, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 9668U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t10 = (t9 - 15);
    t11 = (t10 * -1);
    t12 = (1 * t11);
    t13 = (0U + t12);
    t4 = (t0 + 5792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    *((unsigned char *)t14) = t8;
    xsi_driver_first_trans_delta(t4, t13, 1, 0LL);
    xsi_set_current_line(158, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t16 = (t8 == (unsigned char)3);
    if (t16 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(161, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)4, 8U);
    t3 = (t0 + 5856);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB3:    t1 = (t0 + 5392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(159, ng0);
    t1 = (t0 + 3912U);
    t3 = *((char **)t1);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t1 = (t0 + 9668U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t1);
    t10 = (t9 - 0);
    t11 = (t10 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t9);
    t12 = (8U * t11);
    t13 = (0 + t12);
    t5 = (t3 + t13);
    t6 = (t0 + 5856);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t5, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

}


extern void work_a_1450319583_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1450319583_3212880686_p_0};
	xsi_register_didat("work_a_1450319583_3212880686", "isim/PLCTestBench_isim_beh.exe.sim/work/a_1450319583_3212880686.didat");
	xsi_register_executes(pe);
}

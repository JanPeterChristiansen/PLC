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
extern char *IEEE_P_2592010699;
static const char *ng1 = "C:/Users/japem/Documents/repos/VHDL/PLC/UartWithFifo.vhd";

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


char *work_a_3708587545_3212880686_sub_4137855604_3057020925(char *t1, char *t2, char *t3, char *t4)
{
    char t5[128];
    char t6[24];
    char t9[16];
    char t26[16];
    char *t0;
    char *t7;
    unsigned int t8;
    char *t10;
    int t11;
    char *t12;
    int t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t27;
    int t28;
    char *t29;
    int t30;
    char *t31;
    int t32;
    int t33;
    char *t34;
    char *t35;
    int t36;
    unsigned char t37;
    char *t38;
    char *t39;
    int t40;
    char *t41;
    int t42;
    char *t43;
    int t44;
    int t45;
    int t46;
    int t47;
    int t48;
    char *t49;
    char *t50;
    int t51;
    char *t52;
    int t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned char t58;
    char *t59;
    char *t60;
    int t61;
    char *t62;
    int t63;
    int t64;
    unsigned int t65;
    char *t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;

LAB0:    t7 = (t4 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t10 = (t4 + 0U);
    t11 = *((int *)t10);
    t12 = (t4 + 4U);
    t13 = *((int *)t12);
    t14 = (t4 + 8U);
    t15 = *((int *)t14);
    t16 = (t9 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = t11;
    t17 = (t16 + 4U);
    *((int *)t17) = t13;
    t17 = (t16 + 8U);
    *((int *)t17) = t15;
    t18 = (t13 - t11);
    t19 = (t18 * t15);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = (t5 + 4U);
    t20 = ((IEEE_P_2592010699) + 4024);
    t21 = (t17 + 88U);
    *((char **)t21) = t20;
    t22 = (char *)alloca(t8);
    t23 = (t17 + 56U);
    *((char **)t23) = t22;
    xsi_type_set_default_value(t20, t22, t9);
    t24 = (t17 + 64U);
    *((char **)t24) = t9;
    t25 = (t17 + 80U);
    *((unsigned int *)t25) = t8;
    t27 = (t4 + 4U);
    t28 = *((int *)t27);
    t29 = (t4 + 0U);
    t30 = *((int *)t29);
    t31 = (t4 + 8U);
    t32 = *((int *)t31);
    t33 = (t32 * -1);
    t34 = (t26 + 0U);
    t35 = (t34 + 0U);
    *((int *)t35) = t28;
    t35 = (t34 + 4U);
    *((int *)t35) = t30;
    t35 = (t34 + 8U);
    *((int *)t35) = t33;
    t36 = (t30 - t28);
    t19 = (t36 * t33);
    t19 = (t19 + 1);
    t35 = (t34 + 12U);
    *((unsigned int *)t35) = t19;
    t35 = (t6 + 4U);
    t37 = (t3 != 0);
    if (t37 == 1)
        goto LAB3;

LAB2:    t38 = (t6 + 12U);
    *((char **)t38) = t4;
    t39 = (t26 + 8U);
    t40 = *((int *)t39);
    t41 = (t26 + 4U);
    t42 = *((int *)t41);
    t43 = (t26 + 0U);
    t44 = *((int *)t43);
    t45 = t44;
    t46 = t42;

LAB4:    t47 = (t46 * t40);
    t48 = (t45 * t40);
    if (t48 <= t47)
        goto LAB5;

LAB7:    t7 = (t17 + 56U);
    t10 = *((char **)t7);
    t7 = (t9 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t0 = xsi_get_transient_memory(t8);
    memcpy(t0, t10, t8);
    t12 = (t9 + 0U);
    t11 = *((int *)t12);
    t14 = (t9 + 4U);
    t13 = *((int *)t14);
    t16 = (t9 + 8U);
    t15 = *((int *)t16);
    t20 = (t2 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = t11;
    t21 = (t20 + 4U);
    *((int *)t21) = t13;
    t21 = (t20 + 8U);
    *((int *)t21) = t15;
    t18 = (t13 - t11);
    t19 = (t18 * t15);
    t19 = (t19 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t19;

LAB1:    return t0;
LAB3:    *((char **)t35) = t3;
    goto LAB2;

LAB5:    t49 = (t3 + 0);
    t50 = (t26 + 0U);
    t51 = *((int *)t50);
    t52 = (t26 + 8U);
    t53 = *((int *)t52);
    t54 = (t45 - t51);
    t19 = (t54 * t53);
    t55 = (1U * t19);
    t56 = (0 + t55);
    t57 = (t49 + t56);
    t58 = *((unsigned char *)t57);
    t59 = (t17 + 56U);
    t60 = *((char **)t59);
    t59 = (t9 + 0U);
    t61 = *((int *)t59);
    t62 = (t9 + 8U);
    t63 = *((int *)t62);
    t64 = (t45 - t61);
    t65 = (t64 * t63);
    t66 = (t9 + 4U);
    t67 = *((int *)t66);
    xsi_vhdl_check_range_of_index(t61, t67, t63, t45);
    t68 = (1U * t65);
    t69 = (0 + t68);
    t70 = (t60 + t69);
    *((unsigned char *)t70) = t58;

LAB6:    if (t45 == t46)
        goto LAB7;

LAB8:    t11 = (t45 + t40);
    t45 = t11;
    goto LAB4;

LAB9:;
}

static void work_a_3708587545_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(142, ng1);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7664);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(143, ng1);
    t3 = (t0 + 2472U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(147, ng1);
    t1 = (t0 + 4872U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 7808);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(148, ng1);
    t1 = (t0 + 5192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 7872);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(144, ng1);
    t3 = (t0 + 7808);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(145, ng1);
    t1 = (t0 + 7872);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void work_a_3708587545_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(155, ng1);
    t1 = (t0 + 7936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(156, ng1);
    t1 = (t0 + 8000);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(157, ng1);
    t1 = (t0 + 8064);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(158, ng1);
    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 7680);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(160, ng1);
    t3 = (t0 + 7936);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(161, ng1);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 1)
        goto LAB9;

LAB10:    t6 = (unsigned char)0;

LAB11:    if (t6 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(165, ng1);
    t1 = (t0 + 8064);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(166, ng1);
    t1 = (t0 + 8000);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB7:    goto LAB2;

LAB4:    xsi_set_current_line(169, ng1);
    t1 = (t0 + 8064);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(170, ng1);
    t1 = (t0 + 8000);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(172, ng1);
    t1 = (t0 + 8064);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(173, ng1);
    t1 = (t0 + 7936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(162, ng1);
    t1 = (t0 + 8064);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(163, ng1);
    t1 = (t0 + 8000);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB9:    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    t6 = t12;
    goto LAB11;

}

static void work_a_3708587545_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(183, ng1);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 7696);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(185, ng1);
    t4 = (t0 + 3712U);
    t5 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t4, 0U, 0U);
    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB2;

LAB4:    xsi_set_current_line(189, ng1);
    t1 = (t0 + 8128);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(186, ng1);
    t6 = (t0 + 8128);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t6);
    goto LAB6;

}

static void work_a_3708587545_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(195, ng1);
    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 7712);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(197, ng1);
    t4 = (t0 + 8192);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB4:    xsi_set_current_line(199, ng1);
    t1 = (t0 + 8192);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

}

static void work_a_3708587545_3212880686_p_4(char *t0)
{
    char t11[16];
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
    unsigned int t12;
    char *t13;
    static char *nl0[] = {&&LAB7, &&LAB7, &&LAB5, &&LAB6, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7};

LAB0:    t1 = (t0 + 7344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(204, ng1);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(204, ng1);

LAB12:    t2 = (t0 + 7728);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB13;

LAB1:    return;
LAB5:    xsi_set_current_line(205, ng1);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8256);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB6:    xsi_set_current_line(205, ng1);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = (t0 + 12612U);
    t5 = work_a_3708587545_3212880686_sub_4137855604_3057020925(t0, t11, t3, t2);
    t6 = (t11 + 12U);
    t12 = *((unsigned int *)t6);
    t12 = (t12 * 1U);
    t4 = (8U != t12);
    if (t4 == 1)
        goto LAB8;

LAB9:    t7 = (t0 + 8256);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t5, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB7:    xsi_set_current_line(205, ng1);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = (t0 + 8256);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB8:    xsi_size_not_matching(8U, t12, 0);
    goto LAB9;

LAB10:    t3 = (t0 + 7728);
    *((int *)t3) = 0;
    goto LAB2;

LAB11:    goto LAB10;

LAB13:    goto LAB11;

}


extern void work_a_3708587545_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3708587545_3212880686_p_0,(void *)work_a_3708587545_3212880686_p_1,(void *)work_a_3708587545_3212880686_p_2,(void *)work_a_3708587545_3212880686_p_3,(void *)work_a_3708587545_3212880686_p_4};
	static char *se[] = {(void *)work_a_3708587545_3212880686_sub_4137855604_3057020925};
	xsi_register_didat("work_a_3708587545_3212880686", "isim/PLCTestBench_isim_beh.exe.sim/work/a_3708587545_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

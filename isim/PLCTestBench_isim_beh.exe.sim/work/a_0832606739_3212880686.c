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
static const char *ng0 = "C:/Users/japem/Documents/repos/VHDL/PLC/ALU.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_2807594338_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_767632659_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
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
    char *t11;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 3472U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 7722);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB8:    t6 = (t0 + 7726);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB9:
LAB7:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(55, ng0);

LAB13:    t2 = (t0 + 4784);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;

LAB1:    return;
LAB5:    xsi_set_current_line(56, ng0);
    t9 = (t0 + 4928);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB6:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB10:;
LAB11:    t3 = (t0 + 4784);
    *((int *)t3) = 0;
    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 7730);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4992);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(61, ng0);

LAB11:    t2 = (t0 + 4800);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t6 = (t0 + 4992);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB4;

LAB8:;
LAB9:    t3 = (t0 + 4800);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}

static void work_a_0832606739_3212880686_p_2(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(66, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7484U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 7500U);
    t6 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t1, t3, t2, t5, t4);
    t7 = (t0 + 5056);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 32U);
    xsi_driver_first_trans_fast(t7);

LAB2:    t12 = (t0 + 4816);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_3(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7484U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 7500U);
    t6 = ieee_p_3620187407_sub_767632659_3965413181(IEEE_P_3620187407, t1, t3, t2, t5, t4);
    t7 = (t0 + 5120);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 32U);
    xsi_driver_first_trans_fast(t7);

LAB2:    t12 = (t0 + 4832);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_4(char *t0)
{
    char t58[16];
    char t62[16];
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
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    int t50;
    char *t51;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    unsigned int t59;
    unsigned int t60;
    unsigned char t61;
    unsigned int t63;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 7734);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB22:    t6 = (t0 + 7738);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB23:    t9 = (t0 + 7742);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB24:    t12 = (t0 + 7746);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB25:    t15 = (t0 + 7750);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB9;

LAB26:    t18 = (t0 + 7754);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB10;

LAB27:    t21 = (t0 + 7758);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB11;

LAB28:    t24 = (t0 + 7762);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB12;

LAB29:    t27 = (t0 + 7766);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB13;

LAB30:    t30 = (t0 + 7770);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB14;

LAB31:    t33 = (t0 + 7774);
    t35 = xsi_mem_cmp(t33, t3, 4U);
    if (t35 == 1)
        goto LAB15;

LAB32:    t36 = (t0 + 7778);
    t38 = xsi_mem_cmp(t36, t3, 4U);
    if (t38 == 1)
        goto LAB16;

LAB33:    t39 = (t0 + 7782);
    t41 = xsi_mem_cmp(t39, t3, 4U);
    if (t41 == 1)
        goto LAB17;

LAB34:    t42 = (t0 + 7786);
    t44 = xsi_mem_cmp(t42, t3, 4U);
    if (t44 == 1)
        goto LAB18;

LAB35:    t45 = (t0 + 7790);
    t47 = xsi_mem_cmp(t45, t3, 4U);
    if (t47 == 1)
        goto LAB19;

LAB36:    t48 = (t0 + 7794);
    t50 = xsi_mem_cmp(t48, t3, 4U);
    if (t50 == 1)
        goto LAB20;

LAB37:
LAB21:    xsi_set_current_line(72, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)0, 16U);
    t4 = (t0 + 5184);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(71, ng0);

LAB59:    t2 = (t0 + 4848);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB60;

LAB1:    return;
LAB5:    xsi_set_current_line(72, ng0);
    t51 = (t0 + 7798);
    t53 = (t0 + 5184);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    memcpy(t57, t51, 16U);
    xsi_driver_first_trans_fast(t53);
    goto LAB4;

LAB6:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5184);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5184);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5184);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB9:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7484U);
    t4 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t58, t3, t2);
    t6 = (t58 + 12U);
    t59 = *((unsigned int *)t6);
    t60 = (1U * t59);
    t61 = (16U != t60);
    if (t61 == 1)
        goto LAB39;

LAB40:    t7 = (t0 + 5184);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB10:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7484U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t58, t3, t2, 1);
    t6 = (t58 + 12U);
    t59 = *((unsigned int *)t6);
    t60 = (1U * t59);
    t61 = (16U != t60);
    if (t61 == 1)
        goto LAB41;

LAB42:    t7 = (t0 + 5184);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB11:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7484U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 7500U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t58, t3, t2, t6, t4);
    t9 = (t58 + 12U);
    t59 = *((unsigned int *)t9);
    t60 = (1U * t59);
    t61 = (16U != t60);
    if (t61 == 1)
        goto LAB43;

LAB44:    t10 = (t0 + 5184);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB12:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 5184);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB13:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7484U);
    t4 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t58, t3, t2, 1);
    t6 = (t58 + 12U);
    t59 = *((unsigned int *)t6);
    t60 = (1U * t59);
    t61 = (16U != t60);
    if (t61 == 1)
        goto LAB45;

LAB46:    t7 = (t0 + 5184);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB14:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7484U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 7500U);
    t7 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t58, t3, t2, t6, t4);
    t9 = (t58 + 12U);
    t59 = *((unsigned int *)t9);
    t60 = (1U * t59);
    t61 = (16U != t60);
    if (t61 == 1)
        goto LAB47;

LAB48:    t10 = (t0 + 5184);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB15:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 7814);
    t4 = (t62 + 0U);
    t6 = (t4 + 0U);
    *((int *)t6) = 0;
    t6 = (t4 + 4U);
    *((int *)t6) = 15;
    t6 = (t4 + 8U);
    *((int *)t6) = 1;
    t5 = (15 - 0);
    t59 = (t5 * 1);
    t59 = (t59 + 1);
    t6 = (t4 + 12U);
    *((unsigned int *)t6) = t59;
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 7484U);
    t9 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t58, t2, t62, t7, t6);
    t10 = (t58 + 12U);
    t59 = *((unsigned int *)t10);
    t60 = (1U * t59);
    t61 = (16U != t60);
    if (t61 == 1)
        goto LAB49;

LAB50:    t12 = (t0 + 5184);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t9, 16U);
    xsi_driver_first_trans_fast(t12);
    goto LAB4;

LAB16:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7484U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 7500U);
    t7 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t58, t3, t2, t6, t4);
    t9 = (t58 + 12U);
    t59 = *((unsigned int *)t9);
    t60 = (1U * t59);
    t61 = (16U != t60);
    if (t61 == 1)
        goto LAB51;

LAB52:    t10 = (t0 + 5184);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB17:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7484U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 7500U);
    t7 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t58, t3, t2, t6, t4);
    t9 = (t58 + 12U);
    t59 = *((unsigned int *)t9);
    t60 = (1U * t59);
    t61 = (16U != t60);
    if (t61 == 1)
        goto LAB53;

LAB54:    t10 = (t0 + 5184);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB18:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7484U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 7500U);
    t7 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t58, t3, t2, t6, t4);
    t9 = (t58 + 12U);
    t59 = *((unsigned int *)t9);
    t60 = (1U * t59);
    t61 = (16U != t60);
    if (t61 == 1)
        goto LAB55;

LAB56:    t10 = (t0 + 5184);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB19:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t59 = (31 - 15);
    t60 = (t59 * 1U);
    t63 = (0 + t60);
    t2 = (t3 + t63);
    t4 = (t0 + 5184);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB20:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t59 = (31 - 15);
    t60 = (t59 * 1U);
    t63 = (0 + t60);
    t2 = (t3 + t63);
    t4 = (t0 + 5184);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB38:;
LAB39:    xsi_size_not_matching(16U, t60, 0);
    goto LAB40;

LAB41:    xsi_size_not_matching(16U, t60, 0);
    goto LAB42;

LAB43:    xsi_size_not_matching(16U, t60, 0);
    goto LAB44;

LAB45:    xsi_size_not_matching(16U, t60, 0);
    goto LAB46;

LAB47:    xsi_size_not_matching(16U, t60, 0);
    goto LAB48;

LAB49:    xsi_size_not_matching(16U, t60, 0);
    goto LAB50;

LAB51:    xsi_size_not_matching(16U, t60, 0);
    goto LAB52;

LAB53:    xsi_size_not_matching(16U, t60, 0);
    goto LAB54;

LAB55:    xsi_size_not_matching(16U, t60, 0);
    goto LAB56;

LAB57:    t3 = (t0 + 4848);
    *((int *)t3) = 0;
    goto LAB2;

LAB58:    goto LAB57;

LAB60:    goto LAB58;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1,(void *)work_a_0832606739_3212880686_p_2,(void *)work_a_0832606739_3212880686_p_3,(void *)work_a_0832606739_3212880686_p_4};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/PLCTestBench_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}

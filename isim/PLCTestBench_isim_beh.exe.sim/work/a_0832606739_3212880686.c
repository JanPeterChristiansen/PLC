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
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

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
    char t1[16];
    char *t2;
    char *t3;
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
    char *t16;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 5352U);
    t6 = ieee_p_3620187407_sub_767632659_3965413181(IEEE_P_3620187407, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (32U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 3496);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 3400);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t9, 0);
    goto LAB6;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char t55[16];
    char t56[16];
    char t57[16];
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
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned int t58;
    unsigned int t59;
    unsigned char t60;
    unsigned int t61;

LAB0:    t1 = (t0 + 3080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5492);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB21:    t6 = (t0 + 5496);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB22:    t9 = (t0 + 5500);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB23:    t12 = (t0 + 5504);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB24:    t15 = (t0 + 5508);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB9;

LAB25:    t18 = (t0 + 5512);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB10;

LAB26:    t21 = (t0 + 5516);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB11;

LAB27:    t24 = (t0 + 5520);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB12;

LAB28:    t27 = (t0 + 5524);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB13;

LAB29:    t30 = (t0 + 5528);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB14;

LAB30:    t33 = (t0 + 5532);
    t35 = xsi_mem_cmp(t33, t3, 4U);
    if (t35 == 1)
        goto LAB15;

LAB31:    t36 = (t0 + 5536);
    t38 = xsi_mem_cmp(t36, t3, 4U);
    if (t38 == 1)
        goto LAB16;

LAB32:    t39 = (t0 + 5540);
    t41 = xsi_mem_cmp(t39, t3, 4U);
    if (t41 == 1)
        goto LAB17;

LAB33:    t42 = (t0 + 5544);
    t44 = xsi_mem_cmp(t42, t3, 4U);
    if (t44 == 1)
        goto LAB18;

LAB34:    t45 = (t0 + 5548);
    t47 = xsi_mem_cmp(t45, t3, 4U);
    if (t47 == 1)
        goto LAB19;

LAB35:
LAB20:    xsi_set_current_line(55, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)0, 16U);
    t4 = (t0 + 3560);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(54, ng0);

LAB61:    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB62;

LAB1:    return;
LAB5:    xsi_set_current_line(55, ng0);
    t48 = (t0 + 5552);
    t50 = (t0 + 3560);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t48, 16U);
    xsi_driver_first_trans_fast_port(t50);
    goto LAB4;

LAB6:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 5568);
    t4 = (t0 + 3560);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 5584);
    t4 = (t57 + 0U);
    t6 = (t4 + 0U);
    *((int *)t6) = 0;
    t6 = (t4 + 4U);
    *((int *)t6) = 15;
    t6 = (t4 + 8U);
    *((int *)t6) = 1;
    t5 = (15 - 0);
    t58 = (t5 * 1);
    t58 = (t58 + 1);
    t6 = (t4 + 12U);
    *((unsigned int *)t6) = t58;
    t6 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t56, t2, t57);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t55, t6, t56, 1);
    t9 = (t55 + 12U);
    t58 = *((unsigned int *)t9);
    t59 = (1U * t58);
    t60 = (16U != t59);
    if (t60 == 1)
        goto LAB37;

LAB38:    t10 = (t0 + 3560);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB4;

LAB8:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 3560);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB9:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336U);
    t4 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t55, t3, t2);
    t6 = (t55 + 12U);
    t58 = *((unsigned int *)t6);
    t59 = (1U * t58);
    t60 = (16U != t59);
    if (t60 == 1)
        goto LAB39;

LAB40:    t7 = (t0 + 3560);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB10:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t55, t3, t2, 1);
    t6 = (t55 + 12U);
    t58 = *((unsigned int *)t6);
    t59 = (1U * t58);
    t60 = (16U != t59);
    if (t60 == 1)
        goto LAB41;

LAB42:    t7 = (t0 + 3560);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB11:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 5352U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t55, t3, t2, t6, t4);
    t9 = (t55 + 12U);
    t58 = *((unsigned int *)t9);
    t59 = (1U * t58);
    t60 = (16U != t59);
    if (t60 == 1)
        goto LAB43;

LAB44:    t10 = (t0 + 3560);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB4;

LAB12:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 5352U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t56, t3, t2, t6, t4);
    t9 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t55, t7, t56, 1);
    t10 = (t55 + 12U);
    t58 = *((unsigned int *)t10);
    t59 = (1U * t58);
    t60 = (16U != t59);
    if (t60 == 1)
        goto LAB45;

LAB46:    t12 = (t0 + 3560);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t9, 16U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB4;

LAB13:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336U);
    t4 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t55, t3, t2, 1);
    t6 = (t55 + 12U);
    t58 = *((unsigned int *)t6);
    t59 = (1U * t58);
    t60 = (16U != t59);
    if (t60 == 1)
        goto LAB47;

LAB48:    t7 = (t0 + 3560);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB14:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 5352U);
    t7 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t55, t3, t2, t6, t4);
    t9 = (t55 + 12U);
    t58 = *((unsigned int *)t9);
    t59 = (1U * t58);
    t60 = (16U != t59);
    if (t60 == 1)
        goto LAB49;

LAB50:    t10 = (t0 + 3560);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB4;

LAB15:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 5600);
    t4 = (t56 + 0U);
    t6 = (t4 + 0U);
    *((int *)t6) = 0;
    t6 = (t4 + 4U);
    *((int *)t6) = 15;
    t6 = (t4 + 8U);
    *((int *)t6) = 1;
    t5 = (15 - 0);
    t58 = (t5 * 1);
    t58 = (t58 + 1);
    t6 = (t4 + 12U);
    *((unsigned int *)t6) = t58;
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 5336U);
    t9 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t55, t2, t56, t7, t6);
    t10 = (t55 + 12U);
    t58 = *((unsigned int *)t10);
    t59 = (1U * t58);
    t60 = (16U != t59);
    if (t60 == 1)
        goto LAB51;

LAB52:    t12 = (t0 + 3560);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t9, 16U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB4;

LAB16:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 5352U);
    t7 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t55, t3, t2, t6, t4);
    t9 = (t55 + 12U);
    t58 = *((unsigned int *)t9);
    t59 = (1U * t58);
    t60 = (16U != t59);
    if (t60 == 1)
        goto LAB53;

LAB54:    t10 = (t0 + 3560);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB4;

LAB17:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 5352U);
    t7 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t55, t3, t2, t6, t4);
    t9 = (t55 + 12U);
    t58 = *((unsigned int *)t9);
    t59 = (1U * t58);
    t60 = (16U != t59);
    if (t60 == 1)
        goto LAB55;

LAB56:    t10 = (t0 + 3560);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB4;

LAB18:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 5352U);
    t7 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t55, t3, t2, t6, t4);
    t9 = (t55 + 12U);
    t58 = *((unsigned int *)t9);
    t59 = (1U * t58);
    t60 = (16U != t59);
    if (t60 == 1)
        goto LAB57;

LAB58:    t10 = (t0 + 3560);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB4;

LAB19:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t58 = (31 - 15);
    t59 = (t58 * 1U);
    t61 = (0 + t59);
    t2 = (t3 + t61);
    t4 = (t0 + 3560);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB36:;
LAB37:    xsi_size_not_matching(16U, t59, 0);
    goto LAB38;

LAB39:    xsi_size_not_matching(16U, t59, 0);
    goto LAB40;

LAB41:    xsi_size_not_matching(16U, t59, 0);
    goto LAB42;

LAB43:    xsi_size_not_matching(16U, t59, 0);
    goto LAB44;

LAB45:    xsi_size_not_matching(16U, t59, 0);
    goto LAB46;

LAB47:    xsi_size_not_matching(16U, t59, 0);
    goto LAB48;

LAB49:    xsi_size_not_matching(16U, t59, 0);
    goto LAB50;

LAB51:    xsi_size_not_matching(16U, t59, 0);
    goto LAB52;

LAB53:    xsi_size_not_matching(16U, t59, 0);
    goto LAB54;

LAB55:    xsi_size_not_matching(16U, t59, 0);
    goto LAB56;

LAB57:    xsi_size_not_matching(16U, t59, 0);
    goto LAB58;

LAB59:    t3 = (t0 + 3416);
    *((int *)t3) = 0;
    goto LAB2;

LAB60:    goto LAB59;

LAB62:    goto LAB60;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/PLCTestBench_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}

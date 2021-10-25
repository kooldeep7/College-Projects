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
static const char *ng0 = "C:/Users/Kuldeep/Desktop/CECS CLASSES/CECS 201/Ripple-Carry/FA16Adder_tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {16, 0};
static int ng3[] = {4, 0};
static int ng4[] = {1, 0};
static int ng5[] = {15, 0};
static unsigned int ng6[] = {65535U, 0U};
static int ng7[] = {35, 0};
static const char *ng8 = "Error S = %d A = %d B = %d Ci = %b";



static void Initial_21_0(char *t0)
{
    char t6[8];
    char t17[8];
    char t26[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(21, ng0);

LAB4:    xsi_set_current_line(22, ng0);
    xsi_set_current_line(22, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB5:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:
LAB1:    return;
LAB6:    xsi_set_current_line(23, ng0);

LAB8:    xsi_set_current_line(24, ng0);
    t13 = (t0 + 2088);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng3)));
    memset(t17, 0, 8);
    xsi_vlog_signed_mod(t17, 32, t15, 32, t16, 32);
    t18 = (t17 + 4);
    t19 = *((unsigned int *)t18);
    t20 = (~(t19));
    t21 = *((unsigned int *)t17);
    t22 = (t21 & t20);
    t23 = (t22 != 0);
    if (t23 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(24, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB11:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_equal(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB12;

LAB13:
LAB14:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 16);
    xsi_set_current_line(28, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 16);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB9:    xsi_set_current_line(24, ng0);
    t24 = ((char*)((ng4)));
    t25 = (t0 + 1928);
    xsi_vlogvar_assign_value(t25, t24, 0, 0, 1);
    goto LAB11;

LAB12:    xsi_set_current_line(25, ng0);

LAB15:    xsi_set_current_line(25, ng0);
    t13 = ((char*)((ng4)));
    t14 = (t0 + 1608);
    xsi_vlogvar_assign_value(t14, t13, 0, 0, 16);
    xsi_set_current_line(25, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB14;

LAB16:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1608);
    t5 = (t3 + 56U);
    t7 = *((char **)t5);
    t13 = (t0 + 1768);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 16, t7, 16, t15, 16);
    t16 = (t0 + 1928);
    t18 = (t16 + 56U);
    t24 = *((char **)t18);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_add(t17, 16, t6, 16, t24, 1);
    memset(t26, 0, 8);
    if (*((unsigned int *)t4) != *((unsigned int *)t17))
        goto LAB18;

LAB17:    t25 = (t4 + 4);
    t27 = (t17 + 4);
    if (*((unsigned int *)t25) != *((unsigned int *)t27))
        goto LAB18;

LAB19:    t28 = (t26 + 4);
    t8 = *((unsigned int *)t28);
    t9 = (~(t8));
    t10 = *((unsigned int *)t26);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB20;

LAB21:
LAB22:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB5;

LAB18:    *((unsigned int *)t26) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(32, ng0);
    t29 = (t0 + 1048U);
    t30 = *((char **)t29);
    t29 = (t0 + 1608);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    t33 = (t0 + 1768);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t0 + 1928);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t30, 16, (char)118, t32, 16, (char)118, t35, 16, (char)118, t38, 1);
    goto LAB22;

}


extern void work_m_00000000000073130531_0029911816_init()
{
	static char *pe[] = {(void *)Initial_21_0};
	xsi_register_didat("work_m_00000000000073130531_0029911816", "isim/FA16Adder_tb_isim_beh.exe.sim/work/m_00000000000073130531_0029911816.didat");
	xsi_register_executes(pe);
}

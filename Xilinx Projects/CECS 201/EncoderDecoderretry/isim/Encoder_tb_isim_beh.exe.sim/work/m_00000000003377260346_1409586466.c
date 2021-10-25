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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/seanl/Documents/Xilinx CECS201/EncoderDecoderretry/Encoder_tb.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {8, 0};
static int ng4[] = {1, 0};



static void Initial_18_0(char *t0)
{
    char t6[8];
    char t18[8];
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
    char *t17;
    char *t19;

LAB0:    t1 = (t0 + 1444U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(18, ng0);

LAB4:    xsi_set_current_line(19, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 828);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(20, ng0);
    xsi_set_current_line(20, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB5:    t2 = (t0 + 920);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
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
LAB6:    xsi_set_current_line(21, ng0);
    t13 = (t0 + 1344);
    xsi_process_wait(t13, 100000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(21, ng0);
    t14 = (t0 + 828);
    t15 = (t14 + 36U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng4)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_lshift(t18, 8, t16, 8, t17, 32);
    t19 = (t0 + 828);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 8);
    xsi_set_current_line(20, ng0);
    t2 = (t0 + 920);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 920);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB5;

}


extern void work_m_00000000003377260346_1409586466_init()
{
	static char *pe[] = {(void *)Initial_18_0};
	xsi_register_didat("work_m_00000000003377260346_1409586466", "isim/Encoder_tb_isim_beh.exe.sim/work/m_00000000003377260346_1409586466.didat");
	xsi_register_executes(pe);
}

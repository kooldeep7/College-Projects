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
static const char *ng0 = "C:/Users/Kuldeep/Downloads/counter32.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};



static void Always_30_0(char *t0)
{
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 32, 0LL);

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(32, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    goto LAB7;

}

static void Always_36_1(char *t0)
{
    char t4[8];
    char t7[8];
    char t22[8];
    char t34[8];
    char t37[8];
    char t52[8];
    char t60[8];
    char t98[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t35;
    char *t36;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 3432);
    *((int *)t2) = 1;
    t3 = (t0 + 3128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);
    t5 = (t0 + 1368U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t5) = t14;
    memset(t4, 0, 8);
    t15 = (t7 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t7);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t15) == 0)
        goto LAB5;

LAB7:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;

LAB8:    memset(t22, 0, 8);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t23) != 0)
        goto LAB11;

LAB12:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB13;

LAB14:    memcpy(t60, t22, 8);

LAB15:    t92 = (t60 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t60);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t5 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t5);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    memset(t4, 0, 8);
    t6 = (t7 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    t18 = *((unsigned int *)t7);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB33;

LAB31:    if (*((unsigned int *)t6) == 0)
        goto LAB30;

LAB32:    t8 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t8) = 1;

LAB33:    memset(t22, 0, 8);
    t15 = (t4 + 4);
    t24 = *((unsigned int *)t15);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t15) != 0)
        goto LAB36;

LAB37:    t23 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t23);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB38;

LAB39:    memcpy(t52, t22, 8);

LAB40:    t65 = (t52 + 4);
    t87 = *((unsigned int *)t65);
    t88 = (~(t87));
    t89 = *((unsigned int *)t52);
    t90 = (t89 & t88);
    t91 = (t90 != 0);
    if (t91 > 0)
        goto LAB48;

LAB49:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t5);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    memset(t7, 0, 8);
    t6 = (t4 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    t18 = *((unsigned int *)t4);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t6) != 0)
        goto LAB53;

LAB54:    t15 = (t7 + 4);
    t24 = *((unsigned int *)t7);
    t25 = *((unsigned int *)t15);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB55;

LAB56:    memcpy(t52, t7, 8);

LAB57:    t65 = (t52 + 4);
    t87 = *((unsigned int *)t65);
    t88 = (~(t87));
    t89 = *((unsigned int *)t52);
    t90 = (t89 & t88);
    t91 = (t90 != 0);
    if (t91 > 0)
        goto LAB69;

LAB70:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t5);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    memset(t7, 0, 8);
    t6 = (t4 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    t18 = *((unsigned int *)t4);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB72;

LAB73:    if (*((unsigned int *)t6) != 0)
        goto LAB74;

LAB75:    t15 = (t7 + 4);
    t24 = *((unsigned int *)t7);
    t25 = *((unsigned int *)t15);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB76;

LAB77:    memcpy(t37, t7, 8);

LAB78:    t59 = (t37 + 4);
    t80 = *((unsigned int *)t59);
    t81 = (~(t80));
    t82 = *((unsigned int *)t37);
    t83 = (t82 & t81);
    t86 = (t83 != 0);
    if (t86 > 0)
        goto LAB86;

LAB87:
LAB88:
LAB71:
LAB50:
LAB29:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    *((unsigned int *)t22) = 1;
    goto LAB12;

LAB11:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB12;

LAB13:    t35 = (t0 + 1368U);
    t36 = *((char **)t35);
    memset(t37, 0, 8);
    t35 = (t37 + 4);
    t38 = (t36 + 4);
    t39 = *((unsigned int *)t36);
    t40 = (t39 >> 0);
    t41 = (t40 & 1);
    *((unsigned int *)t37) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 >> 0);
    t44 = (t43 & 1);
    *((unsigned int *)t35) = t44;
    memset(t34, 0, 8);
    t45 = (t37 + 4);
    t46 = *((unsigned int *)t45);
    t47 = (~(t46));
    t48 = *((unsigned int *)t37);
    t49 = (t48 & t47);
    t50 = (t49 & 1U);
    if (t50 != 0)
        goto LAB19;

LAB17:    if (*((unsigned int *)t45) == 0)
        goto LAB16;

LAB18:    t51 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t51) = 1;

LAB19:    memset(t52, 0, 8);
    t53 = (t34 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t34);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t53) != 0)
        goto LAB22;

LAB23:    t61 = *((unsigned int *)t22);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t22 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB24;

LAB25:
LAB26:    goto LAB15;

LAB16:    *((unsigned int *)t34) = 1;
    goto LAB19;

LAB20:    *((unsigned int *)t52) = 1;
    goto LAB23;

LAB22:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB23;

LAB24:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t22 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t22);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB26;

LAB27:    xsi_set_current_line(38, ng0);
    t99 = (t0 + 1928);
    t100 = (t99 + 56U);
    t101 = *((char **)t100);
    memset(t98, 0, 8);
    t102 = (t98 + 4);
    t103 = (t101 + 4);
    t104 = *((unsigned int *)t101);
    t105 = (t104 >> 0);
    *((unsigned int *)t98) = t105;
    t106 = *((unsigned int *)t103);
    t107 = (t106 >> 0);
    *((unsigned int *)t102) = t107;
    t108 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t108 & 255U);
    t109 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t109 & 255U);
    t110 = (t0 + 1768);
    xsi_vlogvar_assign_value(t110, t98, 0, 0, 8);
    goto LAB29;

LAB30:    *((unsigned int *)t4) = 1;
    goto LAB33;

LAB34:    *((unsigned int *)t22) = 1;
    goto LAB37;

LAB36:    t21 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB37;

LAB38:    t29 = (t0 + 1368U);
    t30 = *((char **)t29);
    memset(t34, 0, 8);
    t29 = (t34 + 4);
    t35 = (t30 + 4);
    t39 = *((unsigned int *)t30);
    t40 = (t39 >> 0);
    t41 = (t40 & 1);
    *((unsigned int *)t34) = t41;
    t42 = *((unsigned int *)t35);
    t43 = (t42 >> 0);
    t44 = (t43 & 1);
    *((unsigned int *)t29) = t44;
    memset(t37, 0, 8);
    t36 = (t34 + 4);
    t46 = *((unsigned int *)t36);
    t47 = (~(t46));
    t48 = *((unsigned int *)t34);
    t49 = (t48 & t47);
    t50 = (t49 & 1U);
    if (t50 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t36) != 0)
        goto LAB43;

LAB44:    t54 = *((unsigned int *)t22);
    t55 = *((unsigned int *)t37);
    t56 = (t54 & t55);
    *((unsigned int *)t52) = t56;
    t45 = (t22 + 4);
    t51 = (t37 + 4);
    t53 = (t52 + 4);
    t57 = *((unsigned int *)t45);
    t58 = *((unsigned int *)t51);
    t61 = (t57 | t58);
    *((unsigned int *)t53) = t61;
    t62 = *((unsigned int *)t53);
    t63 = (t62 != 0);
    if (t63 == 1)
        goto LAB45;

LAB46:
LAB47:    goto LAB40;

LAB41:    *((unsigned int *)t37) = 1;
    goto LAB44;

LAB43:    t38 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB44;

LAB45:    t67 = *((unsigned int *)t52);
    t68 = *((unsigned int *)t53);
    *((unsigned int *)t52) = (t67 | t68);
    t59 = (t22 + 4);
    t64 = (t37 + 4);
    t69 = *((unsigned int *)t22);
    t70 = (~(t69));
    t71 = *((unsigned int *)t59);
    t72 = (~(t71));
    t73 = *((unsigned int *)t37);
    t76 = (~(t73));
    t77 = *((unsigned int *)t64);
    t78 = (~(t77));
    t84 = (t70 & t72);
    t85 = (t76 & t78);
    t79 = (~(t84));
    t80 = (~(t85));
    t81 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t81 & t79);
    t82 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t82 & t80);
    t83 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t83 & t79);
    t86 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t86 & t80);
    goto LAB47;

LAB48:    xsi_set_current_line(40, ng0);
    t66 = (t0 + 1928);
    t74 = (t66 + 56U);
    t75 = *((char **)t74);
    memset(t60, 0, 8);
    t92 = (t60 + 4);
    t99 = (t75 + 4);
    t93 = *((unsigned int *)t75);
    t94 = (t93 >> 8);
    *((unsigned int *)t60) = t94;
    t95 = *((unsigned int *)t99);
    t96 = (t95 >> 8);
    *((unsigned int *)t92) = t96;
    t97 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t97 & 255U);
    t104 = *((unsigned int *)t92);
    *((unsigned int *)t92) = (t104 & 255U);
    t100 = (t0 + 1768);
    xsi_vlogvar_assign_value(t100, t60, 0, 0, 8);
    goto LAB50;

LAB51:    *((unsigned int *)t7) = 1;
    goto LAB54;

LAB53:    t8 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB54;

LAB55:    t21 = (t0 + 1368U);
    t23 = *((char **)t21);
    memset(t34, 0, 8);
    t21 = (t34 + 4);
    t29 = (t23 + 4);
    t27 = *((unsigned int *)t23);
    t28 = (t27 >> 0);
    t31 = (t28 & 1);
    *((unsigned int *)t34) = t31;
    t32 = *((unsigned int *)t29);
    t33 = (t32 >> 0);
    t39 = (t33 & 1);
    *((unsigned int *)t21) = t39;
    memset(t22, 0, 8);
    t30 = (t34 + 4);
    t40 = *((unsigned int *)t30);
    t41 = (~(t40));
    t42 = *((unsigned int *)t34);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB61;

LAB59:    if (*((unsigned int *)t30) == 0)
        goto LAB58;

LAB60:    t35 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t35) = 1;

LAB61:    memset(t37, 0, 8);
    t36 = (t22 + 4);
    t46 = *((unsigned int *)t36);
    t47 = (~(t46));
    t48 = *((unsigned int *)t22);
    t49 = (t48 & t47);
    t50 = (t49 & 1U);
    if (t50 != 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t36) != 0)
        goto LAB64;

LAB65:    t54 = *((unsigned int *)t7);
    t55 = *((unsigned int *)t37);
    t56 = (t54 & t55);
    *((unsigned int *)t52) = t56;
    t45 = (t7 + 4);
    t51 = (t37 + 4);
    t53 = (t52 + 4);
    t57 = *((unsigned int *)t45);
    t58 = *((unsigned int *)t51);
    t61 = (t57 | t58);
    *((unsigned int *)t53) = t61;
    t62 = *((unsigned int *)t53);
    t63 = (t62 != 0);
    if (t63 == 1)
        goto LAB66;

LAB67:
LAB68:    goto LAB57;

LAB58:    *((unsigned int *)t22) = 1;
    goto LAB61;

LAB62:    *((unsigned int *)t37) = 1;
    goto LAB65;

LAB64:    t38 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB65;

LAB66:    t67 = *((unsigned int *)t52);
    t68 = *((unsigned int *)t53);
    *((unsigned int *)t52) = (t67 | t68);
    t59 = (t7 + 4);
    t64 = (t37 + 4);
    t69 = *((unsigned int *)t7);
    t70 = (~(t69));
    t71 = *((unsigned int *)t59);
    t72 = (~(t71));
    t73 = *((unsigned int *)t37);
    t76 = (~(t73));
    t77 = *((unsigned int *)t64);
    t78 = (~(t77));
    t84 = (t70 & t72);
    t85 = (t76 & t78);
    t79 = (~(t84));
    t80 = (~(t85));
    t81 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t81 & t79);
    t82 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t82 & t80);
    t83 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t83 & t79);
    t86 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t86 & t80);
    goto LAB68;

LAB69:    xsi_set_current_line(42, ng0);
    t66 = (t0 + 1928);
    t74 = (t66 + 56U);
    t75 = *((char **)t74);
    memset(t60, 0, 8);
    t92 = (t60 + 4);
    t99 = (t75 + 4);
    t93 = *((unsigned int *)t75);
    t94 = (t93 >> 16);
    *((unsigned int *)t60) = t94;
    t95 = *((unsigned int *)t99);
    t96 = (t95 >> 16);
    *((unsigned int *)t92) = t96;
    t97 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t97 & 255U);
    t104 = *((unsigned int *)t92);
    *((unsigned int *)t92) = (t104 & 255U);
    t100 = (t0 + 1768);
    xsi_vlogvar_assign_value(t100, t60, 0, 0, 8);
    goto LAB71;

LAB72:    *((unsigned int *)t7) = 1;
    goto LAB75;

LAB74:    t8 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB75;

LAB76:    t21 = (t0 + 1368U);
    t23 = *((char **)t21);
    memset(t22, 0, 8);
    t21 = (t22 + 4);
    t29 = (t23 + 4);
    t27 = *((unsigned int *)t23);
    t28 = (t27 >> 0);
    t31 = (t28 & 1);
    *((unsigned int *)t22) = t31;
    t32 = *((unsigned int *)t29);
    t33 = (t32 >> 0);
    t39 = (t33 & 1);
    *((unsigned int *)t21) = t39;
    memset(t34, 0, 8);
    t30 = (t22 + 4);
    t40 = *((unsigned int *)t30);
    t41 = (~(t40));
    t42 = *((unsigned int *)t22);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t30) != 0)
        goto LAB81;

LAB82:    t46 = *((unsigned int *)t7);
    t47 = *((unsigned int *)t34);
    t48 = (t46 & t47);
    *((unsigned int *)t37) = t48;
    t36 = (t7 + 4);
    t38 = (t34 + 4);
    t45 = (t37 + 4);
    t49 = *((unsigned int *)t36);
    t50 = *((unsigned int *)t38);
    t54 = (t49 | t50);
    *((unsigned int *)t45) = t54;
    t55 = *((unsigned int *)t45);
    t56 = (t55 != 0);
    if (t56 == 1)
        goto LAB83;

LAB84:
LAB85:    goto LAB78;

LAB79:    *((unsigned int *)t34) = 1;
    goto LAB82;

LAB81:    t35 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB82;

LAB83:    t57 = *((unsigned int *)t37);
    t58 = *((unsigned int *)t45);
    *((unsigned int *)t37) = (t57 | t58);
    t51 = (t7 + 4);
    t53 = (t34 + 4);
    t61 = *((unsigned int *)t7);
    t62 = (~(t61));
    t63 = *((unsigned int *)t51);
    t67 = (~(t63));
    t68 = *((unsigned int *)t34);
    t69 = (~(t68));
    t70 = *((unsigned int *)t53);
    t71 = (~(t70));
    t84 = (t62 & t67);
    t85 = (t69 & t71);
    t72 = (~(t84));
    t73 = (~(t85));
    t76 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t76 & t72);
    t77 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t77 & t73);
    t78 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t78 & t72);
    t79 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t79 & t73);
    goto LAB85;

LAB86:    xsi_set_current_line(44, ng0);
    t64 = (t0 + 1928);
    t65 = (t64 + 56U);
    t66 = *((char **)t65);
    memset(t52, 0, 8);
    t74 = (t52 + 4);
    t75 = (t66 + 4);
    t87 = *((unsigned int *)t66);
    t88 = (t87 >> 24);
    *((unsigned int *)t52) = t88;
    t89 = *((unsigned int *)t75);
    t90 = (t89 >> 24);
    *((unsigned int *)t74) = t90;
    t91 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t91 & 255U);
    t93 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t93 & 255U);
    t92 = (t0 + 1768);
    xsi_vlogvar_assign_value(t92, t52, 0, 0, 8);
    goto LAB88;

}


extern void work_m_00000000003682106587_0659284283_init()
{
	static char *pe[] = {(void *)Always_30_0,(void *)Always_36_1};
	xsi_register_didat("work_m_00000000003682106587_0659284283", "isim/counter32_tb_isim_beh.exe.sim/work/m_00000000003682106587_0659284283.didat");
	xsi_register_executes(pe);
}

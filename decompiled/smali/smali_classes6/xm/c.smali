.class public final Lxm/c;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lxm/c;->d()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lxm/c;IIILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lxm/c;->e(Lxm/c;IIILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d()Lkotlin/Unit;
    .locals 4

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_0
    const-string v0, "/member/MemberActivity"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "extra_member_scroll_bottom"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-static {v0}, Lak/k;->p(Lcom/therouter/router/Navigator;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private static final e(Lxm/c;IIILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/v1;->a(I)I

    move-result p3

    invoke-virtual {p0, p1, p2, p4, p3}, Lxm/c;->c(IILandroidx/compose/runtime/i;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final f(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p1}, Lcom/blankj/utilcode/util/y;->d(Landroid/app/Activity;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final c(IILandroidx/compose/runtime/i;I)V
    .locals 37

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    const/4 v3, 0x0

    const/16 v4, 0x30

    const v5, -0x6b44c074

    move-object/from16 v6, p3

    invoke-interface {v6, v5}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v15

    const/4 v14, 0x6

    and-int/lit8 v6, v2, 0x6

    if-nez v6, :cond_1

    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->c(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v2

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    and-int/lit8 v7, v2, 0x30

    const/16 v8, 0x10

    if-nez v7, :cond_3

    invoke-interface {v15, v1}, Landroidx/compose/runtime/i;->c(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    or-int/2addr v6, v7

    :cond_3
    and-int/lit8 v7, v6, 0x13

    const/16 v10, 0x12

    if-ne v7, v10, :cond_5

    invoke-interface {v15}, Landroidx/compose/runtime/i;->h()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v15}, Landroidx/compose/runtime/i;->G()V

    move-object v0, v15

    goto/16 :goto_6

    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, -0x1

    const-string v10, "com.transsion.member.task.TaskCompleteTips.TaskCompleteView (TaskCompleteTips.kt:100)"

    invoke-static {v5, v6, v7, v10}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_6
    sget v5, Lcom/transsion/member/R$mipmap;->ic_succeed:I

    invoke-static {v5, v15, v3}, Li0/e;->c(ILandroidx/compose/runtime/i;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v6

    sget-object v5, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v5}, Landroidx/compose/ui/b$a;->h()Landroidx/compose/ui/b$c;

    move-result-object v7

    sget-object v13, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    int-to-float v10, v0

    invoke-static {v10}, Lo0/i;->g(F)F

    move-result v10

    invoke-static {v13, v10}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v10

    sget v11, Lcom/tn/lib/widget/R$color;->white_90:I

    invoke-static {v11, v15, v3}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v11

    const/16 v9, 0x8

    int-to-float v9, v9

    invoke-static {v9}, Lo0/i;->g(F)F

    move-result v16

    invoke-static/range {v16 .. v16}, Lq/g;->c(F)Lq/f;

    move-result-object v14

    invoke-static {v10, v11, v12, v14}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    move-result-object v10

    const v11, 0x2952b718

    invoke-interface {v15, v11}, Landroidx/compose/runtime/i;->x(I)V

    sget-object v11, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/b;->c()Landroidx/compose/foundation/layout/b$d;

    move-result-object v11

    invoke-static {v11, v7, v15, v4}, Landroidx/compose/foundation/layout/a0;->b(Landroidx/compose/foundation/layout/b$d;Landroidx/compose/ui/b$c;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v4

    const v14, -0x4ee9b9da

    invoke-interface {v15, v14}, Landroidx/compose/runtime/i;->x(I)V

    invoke-static {v15, v3}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v7

    invoke-interface {v15}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v11

    sget-object v31, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->a(Landroidx/compose/ui/f;)Lkotlin/jvm/functions/Function3;

    move-result-object v10

    invoke-interface {v15}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/f;

    if-nez v14, :cond_7

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_7
    invoke-interface {v15}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {v15}, Landroidx/compose/runtime/i;->e()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v15, v12}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_8
    invoke-interface {v15}, Landroidx/compose/runtime/i;->o()V

    :goto_4
    invoke-static {v15}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v12

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v12, v4, v14}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v12, v11, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-interface {v12}, Landroidx/compose/runtime/i;->e()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-interface {v12}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v11}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v12, v7, v4}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_a
    invoke-static {v15}, Landroidx/compose/runtime/h2;->b(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/h2;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/h2;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v4, v15, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7ab4aae9

    invoke-interface {v15, v4}, Landroidx/compose/runtime/i;->x(I)V

    sget-object v23, Landroidx/compose/foundation/layout/d0;->a:Landroidx/compose/foundation/layout/d0;

    int-to-float v14, v8

    invoke-static {v14}, Lo0/i;->g(F)F

    move-result v7

    invoke-static {v13, v7}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v7

    const/4 v12, 0x6

    invoke-static {v7, v15, v12}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    const/16 v7, 0x20

    int-to-float v7, v7

    invoke-static {v7}, Lo0/i;->g(F)F

    move-result v7

    invoke-static {v13, v7}, Landroidx/compose/foundation/layout/SizeKt;->j(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v8

    const/16 v17, 0x1b0

    const/16 v18, 0x78

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v32, v9

    move-object v9, v10

    move-object v10, v11

    move/from16 v11, v19

    move/from16 v19, v12

    move-object/from16 v12, v20

    move-object v4, v13

    move-object v13, v15

    move/from16 v33, v14

    move/from16 v3, v19

    move/from16 v14, v17

    move-object v0, v15

    move/from16 v15, v18

    invoke-static/range {v6 .. v15}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/f;Landroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;Landroidx/compose/runtime/i;II)V

    invoke-static/range {v32 .. v32}, Lo0/i;->g(F)F

    move-result v6

    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v6

    invoke-static {v6, v0, v3}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    sget v6, Lcom/transsion/member/R$string;->member_task_claim_toast:I

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v6, v8, v0, v9}, Li0/h;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/i;I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/tn/lib/widget/R$color;->gray_light_80:I

    invoke-static {v7, v0, v9}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v7

    move-wide v8, v7

    const/16 v34, 0xe

    invoke-static/range {v34 .. v34}, Lo0/x;->c(I)J

    move-result-wide v10

    sget-object v35, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v14

    sget-object v36, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/text/font/p$a;->c()Landroidx/compose/ui/text/font/p;

    move-result-object v13

    invoke-static/range {v33 .. v33}, Lo0/i;->g(F)F

    move-result v18

    invoke-static/range {v33 .. v33}, Lo0/i;->g(F)F

    move-result v20

    const/16 v21, 0x5

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v19

    const/16 v22, 0x2

    const/4 v7, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    move-object/from16 v18, v23

    move-object/from16 v23, v7

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/b0;->a(Landroidx/compose/foundation/layout/c0;Landroidx/compose/ui/f;FZILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v7

    const/16 v29, 0x0

    const v30, 0x1ff90

    const/4 v12, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v28, 0x30c00

    move-object/from16 v27, v0

    invoke-static/range {v6 .. v30}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    invoke-static/range {v32 .. v32}, Lo0/i;->g(F)F

    move-result v6

    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v6

    invoke-static {v6, v0, v3}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    const/16 v6, 0x40

    int-to-float v6, v6

    invoke-static {v6}, Lo0/i;->g(F)F

    move-result v6

    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v6

    const/16 v7, 0x1c

    int-to-float v7, v7

    invoke-static {v7}, Lo0/i;->g(F)F

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v6

    sget v7, Lcom/tn/lib/widget/R$color;->yellow_light_50:I

    const/4 v8, 0x0

    invoke-static {v7, v0, v8}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v9

    int-to-float v7, v3

    invoke-static {v7}, Lo0/i;->g(F)F

    move-result v7

    invoke-static {v7}, Lq/g;->c(F)Lq/f;

    move-result-object v7

    invoke-static {v6, v9, v10, v7}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    move-result-object v11

    const v6, 0x6e3c21fe

    invoke-interface {v0, v6}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v7}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_b

    new-instance v6, Lxm/a;

    invoke-direct {v6}, Lxm/a;-><init>()V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_b
    move-object v15, v6

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/i;->K()V

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/compose/ui/b$a;->d()Landroidx/compose/ui/b;

    move-result-object v5

    const v7, 0x2bb5b5d7

    invoke-interface {v0, v7}, Landroidx/compose/runtime/i;->x(I)V

    const/4 v7, 0x0

    invoke-static {v5, v7, v0, v3}, Landroidx/compose/foundation/layout/BoxKt;->j(Landroidx/compose/ui/b;ZLandroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v5

    const v8, -0x4ee9b9da

    invoke-interface {v0, v8}, Landroidx/compose/runtime/i;->x(I)V

    invoke-static {v0, v7}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v8

    invoke-interface {v0}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v7

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->a(Landroidx/compose/ui/f;)Lkotlin/jvm/functions/Function3;

    move-result-object v6

    invoke-interface {v0}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/f;

    if-nez v10, :cond_c

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {v0}, Landroidx/compose/runtime/i;->e()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v0, v9}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_d
    invoke-interface {v0}, Landroidx/compose/runtime/i;->o()V

    :goto_5
    invoke-static {v0}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v9

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v9, v5, v10}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v9, v7, v5}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-interface {v9}, Landroidx/compose/runtime/i;->e()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-interface {v9}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    :cond_e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7, v5}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_f
    invoke-static {v0}, Landroidx/compose/runtime/h2;->b(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/h2;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/h2;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v5, v0, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x7ab4aae9

    invoke-interface {v0, v5}, Landroidx/compose/runtime/i;->x(I)V

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget v5, Lcom/transsion/member/R$string;->member_claim:I

    invoke-static {v5, v0, v7}, Li0/h;->a(ILandroidx/compose/runtime/i;I)Ljava/lang/String;

    move-result-object v6

    sget v5, Lcom/tn/lib/widget/R$color;->gray_dark_00:I

    invoke-static {v5, v0, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v8

    invoke-static/range {v34 .. v34}, Lo0/x;->c(I)J

    move-result-wide v10

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v14

    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/text/font/p$a;->d()Landroidx/compose/ui/text/font/p;

    move-result-object v13

    const/16 v29, 0x0

    const v30, 0x1ff92

    const/4 v7, 0x0

    const/4 v12, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v28, 0x30c00

    move-object/from16 v27, v0

    invoke-static/range {v6 .. v30}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    invoke-interface {v0}, Landroidx/compose/runtime/i;->r()V

    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    invoke-static/range {v33 .. v33}, Lo0/i;->g(F)F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    invoke-interface {v0}, Landroidx/compose/runtime/i;->r()V

    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_10
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v3, Lxm/b;

    move-object/from16 v4, p0

    move/from16 v5, p1

    invoke-direct {v3, v4, v5, v1, v2}, Lxm/b;-><init>(Lxm/c;III)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    goto :goto_7

    :cond_11
    move-object/from16 v4, p0

    :goto_7
    return-void
.end method

.method public final g(I)V
    .locals 11

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->o()Landroid/app/Activity;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lie/h;->a(Landroid/app/Activity;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->b()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/transsion/baselib/report/l;->p(I)Landroid/app/Activity;

    move-result-object v1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    instance-of v0, v1, Landroidx/lifecycle/u;

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-direct {p0, v1}, Lxm/c;->f(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x190

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/lit8 v2, v2, -0x20

    :goto_1
    new-instance v3, Landroidx/compose/ui/platform/ComposeView;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/u;

    goto :goto_2

    :cond_3
    move-object v0, v5

    :goto_2
    invoke-static {v3, v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->b(Landroid/view/View;Landroidx/lifecycle/u;)V

    instance-of v0, v1, Landroidx/lifecycle/y0;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/y0;

    goto :goto_3

    :cond_4
    move-object v0, v5

    :goto_3
    invoke-static {v3, v0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->b(Landroid/view/View;Landroidx/lifecycle/y0;)V

    instance-of v0, v1, Landroidx/savedstate/e;

    if-eqz v0, :cond_5

    move-object v5, v1

    check-cast v5, Landroidx/savedstate/e;

    :cond_5
    invoke-static {v3, v5}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->b(Landroid/view/View;Landroidx/savedstate/e;)V

    new-instance v0, Lxm/c$a;

    invoke-direct {v0, p0, v2, p1}, Lxm/c$a;-><init>(Lxm/c;II)V

    const p1, 0x6fcd65af

    invoke-static {p1, v4, v0}, Landroidx/compose/runtime/internal/b;->b(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/a;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const-string v0, "translationY"

    invoke-static {v3, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x1f4

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/tn/lib/widget/toast/core/b;

    invoke-direct {v0, v1}, Lcom/tn/lib/widget/toast/core/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Lcom/tn/lib/widget/toast/core/b;->e(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Lcom/tn/lib/widget/toast/core/b;->setDuration(I)V

    const/4 v1, 0x0

    const/16 v2, 0x3e

    const/16 v3, 0x30

    invoke-virtual {v0, v3, v1, v2}, Lcom/tn/lib/widget/toast/core/b;->setGravity(III)V

    invoke-virtual {v0}, Lcom/tn/lib/widget/toast/core/b;->show()V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    :goto_4
    return-void

    :array_0
    .array-data 4
        -0x3d480000    # -92.0f
        0x0
    .end array-data
.end method

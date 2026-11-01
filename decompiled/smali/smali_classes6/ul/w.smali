.class public abstract Lul/w;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Lcom/google/accompanist/systemuicontroller/c;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lul/w;->f(Lcom/google/accompanist/systemuicontroller/c;J)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lul/w;->h(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lul/w;->i(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lul/w;->g(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    const-string v0, "filterItem"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismiss"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x27b465e7

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v15

    and-int/lit8 v1, v9, 0x6

    if-nez v1, :cond_1

    invoke-interface {v15, v6}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v9

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_1
    and-int/lit8 v2, v9, 0x30

    if-nez v2, :cond_3

    invoke-interface {v15, v7}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v9, 0x180

    if-nez v2, :cond_5

    invoke-interface {v15, v8}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v1, 0x93

    const/16 v4, 0x92

    if-ne v2, v4, :cond_7

    invoke-interface {v15}, Landroidx/compose/runtime/i;->h()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v15}, Landroidx/compose/runtime/i;->G()V

    move-object v0, v15

    goto/16 :goto_6

    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    const-string v4, "com.transsion.home.view.filter.popup.SingleSelectFilter (SingleFilterPopupWindow.kt:44)"

    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    invoke-static {v0, v15, v2, v10}, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt;->e(Landroid/view/Window;Landroidx/compose/runtime/i;II)Lcom/google/accompanist/systemuicontroller/c;

    move-result-object v0

    sget v4, Lcom/tn/lib/widget/R$color;->black_80:I

    invoke-static {v4, v15, v2}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v4

    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v12, -0x615d173a

    invoke-interface {v15, v12}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v15, v4, v5}, Landroidx/compose/runtime/i;->d(J)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_9

    sget-object v13, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v13}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v13

    if-ne v14, v13, :cond_a

    :cond_9
    new-instance v14, Lul/p;

    invoke-direct {v14, v0, v4, v5}, Lul/p;-><init>(Lcom/google/accompanist/systemuicontroller/c;J)V

    invoke-interface {v15, v14}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_a
    check-cast v14, Ljava/lang/Runnable;

    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    const-wide/16 v2, 0x64

    invoke-virtual {v11, v14, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-interface {v15, v12}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    and-int/lit16 v1, v1, 0x380

    const/16 v3, 0x100

    if-ne v1, v3, :cond_b

    move v13, v10

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    :goto_5
    or-int v1, v2, v13

    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_c

    sget-object v1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_d

    :cond_c
    new-instance v2, Lul/q;

    invoke-direct {v2, v0, v8}, Lul/q;-><init>(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_d
    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    const v0, 0x4c5de2

    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v15, v11}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_e

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_f

    :cond_e
    new-instance v1, Lul/r;

    invoke-direct {v1, v11}, Lul/r;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v15, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_f
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    new-instance v13, Landroidx/compose/ui/window/c;

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v13

    invoke-direct/range {v16 .. v21}, Landroidx/compose/ui/window/c;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v14, Lul/w$a;

    move-object v0, v14

    move-wide v1, v4

    move-object/from16 v3, p0

    move-object v4, v11

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lul/w$a;-><init>(JLcom/transsion/home/bean/Item;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    const/16 v0, 0x36

    const v1, -0x2fb8d150

    invoke-static {v1, v10, v14, v15, v0}, Landroidx/compose/runtime/internal/b;->d(IZLjava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/internal/a;

    move-result-object v0

    const/16 v14, 0x1b0

    const/4 v1, 0x0

    move-object v10, v12

    move-object v11, v13

    move-object v12, v0

    move-object v13, v15

    move-object v0, v15

    move v15, v1

    invoke-static/range {v10 .. v15}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_10
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Lul/s;

    invoke-direct {v1, v6, v7, v8, v9}, Lul/s;-><init>(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_11
    return-void
.end method

.method private static final f(Lcom/google/accompanist/systemuicontroller/c;J)V
    .locals 8

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v7}, Lcom/google/accompanist/systemuicontroller/b;->b(Lcom/google/accompanist/systemuicontroller/c;JZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final g(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->d()J

    move-result-wide v2

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/google/accompanist/systemuicontroller/b;->b(Lcom/google/accompanist/systemuicontroller/c;JZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final i(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/v1;->a(I)I

    move-result p3

    invoke-static {p0, p1, p2, p4, p3}, Lul/w;->e(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

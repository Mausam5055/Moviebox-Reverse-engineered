.class final Lul/w$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lul/w;->e(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/transsion/home/bean/Item;

.field final synthetic c:Lkotlin/jvm/functions/Function1;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(JLcom/transsion/home/bean/Item;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    iput-wide p1, p0, Lul/w$a;->a:J

    iput-object p3, p0, Lul/w$a;->b:Lcom/transsion/home/bean/Item;

    iput-object p4, p0, Lul/w$a;->c:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lul/w$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/home/bean/Item;Landroidx/compose/foundation/layout/k;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/u;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lul/w$a;->e(Lcom/transsion/home/bean/Item;Landroidx/compose/foundation/layout/k;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/u;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lul/w$a;->d(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final e(Lcom/transsion/home/bean/Item;Landroidx/compose/foundation/layout/k;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/u;)Lkotlin/Unit;
    .locals 7

    const-string v0, "$this$LazyColumn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/home/bean/Item;->getFilterValsV2()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/FilterVal;

    invoke-virtual {v0}, Lcom/transsion/home/bean/FilterVal;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lul/w$a$a;

    invoke-direct {v1, v0, p1, p2}, Lul/w$a$a;-><init>(Lcom/transsion/home/bean/FilterVal;Landroidx/compose/foundation/layout/k;Lkotlin/jvm/functions/Function1;)V

    const v0, 0x3346a12e

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/internal/b;->b(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/a;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/t;->a(Landroidx/compose/foundation/lazy/u;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final c(Landroidx/compose/runtime/i;I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->h()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->G()V

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "com.transsion.home.view.filter.popup.SingleSelectFilter.<anonymous> (SingleFilterPopupWindow.kt:65)"

    const v5, -0x2fb8d150

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_2
    sget-object v14, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    iget-wide v7, v0, Lul/w$a;->a:J

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, v14

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v2

    const/4 v15, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-static {v2, v15, v13, v12}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v2

    iget-object v10, v0, Lul/w$a;->b:Lcom/transsion/home/bean/Item;

    iget-object v11, v0, Lul/w$a;->c:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lul/w$a;->d:Ljava/lang/String;

    sget-object v3, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v3}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/b;Z)Landroidx/compose/ui/layout/t;

    move-result-object v4

    invoke-static {v1, v5}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v6

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v8

    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v2

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v13

    instance-of v13, v13, Landroidx/compose/runtime/f;

    if-nez v13, :cond_3

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->C()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->e()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->o()V

    :goto_1
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v12

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v12, v4, v13}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v12, v8, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-interface {v12}, Landroidx/compose/runtime/i;->e()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v12}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6, v4}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v12, v2, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v2, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/b;->d()Landroidx/compose/foundation/layout/b$k;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/compose/ui/b$a;->i()Landroidx/compose/ui/b$b;

    move-result-object v6

    invoke-static {v4, v6, v1, v5}, Landroidx/compose/foundation/layout/i;->a(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v4

    invoke-static {v1, v5}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v6

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v8

    invoke-static {v1, v14}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v12

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/f;

    if-nez v15, :cond_7

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_7
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->C()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->e()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v1, v13}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_8
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->o()V

    :goto_2
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v13

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v13, v4, v15}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v13, v8, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-interface {v13}, Landroidx/compose/runtime/i;->e()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-interface {v13}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v13, v8}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v13, v6, v4}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_a
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v13, v12, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v15, Landroidx/compose/foundation/layout/l;->a:Landroidx/compose/foundation/layout/l;

    const/16 v4, 0xc

    int-to-float v13, v4

    invoke-static {v13}, Lo0/i;->g(F)F

    move-result v4

    const/16 v6, 0x10

    int-to-float v6, v6

    invoke-static {v6}, Lo0/i;->g(F)F

    move-result v6

    invoke-static {v14, v6, v4}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/b;->c()Landroidx/compose/foundation/layout/b$d;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/compose/ui/b$a;->j()Landroidx/compose/ui/b$c;

    move-result-object v3

    invoke-static {v2, v3, v1, v5}, Landroidx/compose/foundation/layout/a0;->b(Landroidx/compose/foundation/layout/b$d;Landroidx/compose/ui/b$c;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v2

    invoke-static {v1, v5}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v3

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v6

    invoke-static {v1, v4}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v4

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v12

    instance-of v12, v12, Landroidx/compose/runtime/f;

    if-nez v12, :cond_b

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_b
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->C()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->e()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v1, v8}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_c
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->o()V

    :goto_3
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v8

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v8, v2, v12}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v8, v6, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-interface {v8}, Landroidx/compose/runtime/i;->e()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-interface {v8}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    :cond_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3, v2}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_e
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v8, v4, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v19, Landroidx/compose/foundation/layout/d0;->a:Landroidx/compose/foundation/layout/d0;

    sget-object v2, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v9

    sget-object v2, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/p$a;->e()Landroidx/compose/ui/text/font/p;

    move-result-object v8

    sget-object v2, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/p$a;->b()I

    move-result v16

    const/16 v2, 0x12

    invoke-static {v2}, Lo0/x;->c(I)J

    move-result-wide v2

    move v12, v5

    move-wide v5, v2

    sget-object v2, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/u1$a;->f()J

    move-result-wide v3

    int-to-float v2, v12

    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v2

    invoke-static {v14, v2}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v20

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/b0;->a(Landroidx/compose/foundation/layout/c0;Landroidx/compose/ui/f;FZILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v2

    const/16 v24, 0x30

    const v25, 0x1f790

    const/16 v19, 0x0

    move-object/from16 v22, v7

    move-object/from16 v7, v19

    const-wide/16 v19, 0x0

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-wide/from16 v10, v19

    const/16 v19, 0x0

    move-object/from16 v12, v19

    move/from16 v28, v13

    move-object/from16 v13, v19

    const-wide/16 v19, 0x0

    move-object/from16 v29, v14

    move-object/from16 p2, v15

    move-wide/from16 v14, v19

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v23, 0x30d80

    move-object/from16 v1, v22

    move-object/from16 v22, p1

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    invoke-static/range {v28 .. v28}, Lo0/i;->g(F)F

    move-result v1

    move-object/from16 v13, v29

    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v1

    const/4 v14, 0x6

    move-object/from16 v15, p1

    invoke-static {v1, v15, v14}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    sget v1, Lcom/transsion/videodetail/R$drawable;->music_iv_close:I

    const/4 v9, 0x0

    invoke-static {v1, v15, v9}, Li0/e;->c(ILandroidx/compose/runtime/i;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v2, v15, v9}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v4

    const/16 v2, 0x15

    int-to-float v2, v2

    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v3

    invoke-static {v13, v3}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v3

    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v2

    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v16

    const v2, 0x4c5de2

    invoke-interface {v15, v2}, Landroidx/compose/runtime/i;->P(I)V

    move-object/from16 v12, v27

    invoke-interface {v15, v12}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_f

    sget-object v2, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v2}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_10

    :cond_f
    new-instance v3, Lul/t;

    invoke-direct {v3, v12}, Lul/t;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v20, v3

    check-cast v20, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->K()V

    const/16 v21, 0x7

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v3

    const/16 v7, 0x30

    const/4 v8, 0x0

    const-string v2, "open"

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/f;JLandroidx/compose/runtime/i;II)V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->r()V

    sget v1, Lcom/tn/lib/widget/R$color;->white_10:I

    invoke-static {v1, v15, v9}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v3

    const/4 v11, 0x1

    int-to-float v1, v11

    invoke-static {v1}, Lo0/i;->g(F)F

    move-result v2

    const/16 v6, 0x30

    const/4 v7, 0x1

    const/4 v1, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/f;FJLandroidx/compose/runtime/i;II)V

    const/16 v1, 0x17

    int-to-float v1, v1

    invoke-static {v1}, Lo0/i;->g(F)F

    move-result v1

    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v1

    invoke-static {v1, v15, v14}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v6, p2

    move-object v7, v13

    move v2, v11

    move-object v11, v1

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/j;->a(Landroidx/compose/foundation/layout/k;Landroidx/compose/ui/f;FZILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v1

    const v2, -0x6815fd56

    invoke-interface {v15, v2}, Landroidx/compose/runtime/i;->P(I)V

    move-object/from16 v2, v26

    invoke-interface {v15, v2}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v15, v12}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_11

    sget-object v3, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v3}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_12

    :cond_11
    new-instance v4, Lul/u;

    move-object/from16 v3, p2

    invoke-direct {v4, v2, v3, v12}, Lul/u;-><init>(Lcom/transsion/home/bean/Item;Landroidx/compose/foundation/layout/k;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v15, v4}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_12
    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->K()V

    const/4 v11, 0x0

    const/16 v12, 0xfe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v1 .. v12}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/f;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/t;ZLandroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/foundation/gestures/g;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;II)V

    const/16 v1, 0x28

    int-to-float v1, v1

    invoke-static {v1}, Lo0/i;->g(F)F

    move-result v1

    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v1

    invoke-static {v1, v15, v14}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->r()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->r()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_13
    :goto_4
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lul/w$a;->c(Landroidx/compose/runtime/i;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.class final Lcom/transsion/home/view/filter/popup/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/view/filter/popup/e;->p(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Landroidx/compose/runtime/snapshots/t;

.field final synthetic f:Lkotlin/jvm/functions/Function1;

.field final synthetic g:Landroidx/compose/runtime/snapshots/t;


# direct methods
.method constructor <init>(JFFLjava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/t;)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/home/view/filter/popup/e$a;->a:J

    iput p3, p0, Lcom/transsion/home/view/filter/popup/e$a;->b:F

    iput p4, p0, Lcom/transsion/home/view/filter/popup/e$a;->c:F

    iput-object p5, p0, Lcom/transsion/home/view/filter/popup/e$a;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/transsion/home/view/filter/popup/e$a;->e:Landroidx/compose/runtime/snapshots/t;

    iput-object p7, p0, Lcom/transsion/home/view/filter/popup/e$a;->f:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/transsion/home/view/filter/popup/e$a;->g:Landroidx/compose/runtime/snapshots/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/view/filter/popup/e$a;->h(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/e$a;->f(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/foundation/lazy/u;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/e$a;->i(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/foundation/lazy/u;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/view/filter/popup/e$a;->g(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/view/filter/popup/e;->B(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final g(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/view/filter/popup/e;->C(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final i(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/foundation/lazy/u;)Lkotlin/Unit;
    .locals 7

    const-string v0, "$this$LazyColumn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/Item;

    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/transsion/home/view/filter/popup/e$a$a;

    invoke-direct {v1, v0, p1}, Lcom/transsion/home/view/filter/popup/e$a$a;-><init>(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;)V

    const v0, 0x301e7345

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/internal/b;->b(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/a;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/t;->a(Landroidx/compose/foundation/lazy/u;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final e(Landroidx/compose/runtime/i;I)V
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v15, 0x2

    if-ne v2, v15, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->h()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->G()V

    goto/16 :goto_7

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.transsion.home.view.filter.popup.MultiFilterPopup.<anonymous> (MultiFilterPopupWindow.kt:122)"

    const v4, -0x5497e4bb

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_2
    sget-object v13, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    iget-wide v6, v0, Lcom/transsion/home/view/filter/popup/e$a;->a:J

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v13

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v1, v12, v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v1

    iget v4, v0, Lcom/transsion/home/view/filter/popup/e$a;->b:F

    iget v6, v0, Lcom/transsion/home/view/filter/popup/e$a;->c:F

    iget-object v9, v0, Lcom/transsion/home/view/filter/popup/e$a;->d:Ljava/util/List;

    iget-object v8, v0, Lcom/transsion/home/view/filter/popup/e$a;->e:Landroidx/compose/runtime/snapshots/t;

    iget-object v7, v0, Lcom/transsion/home/view/filter/popup/e$a;->f:Lkotlin/jvm/functions/Function1;

    iget-object v5, v0, Lcom/transsion/home/view/filter/popup/e$a;->g:Landroidx/compose/runtime/snapshots/t;

    sget-object v26, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/b;Z)Landroidx/compose/ui/layout/t;

    move-result-object v2

    invoke-static {v14, v3}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v16

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v3

    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v1

    sget-object v27, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/f;

    if-nez v10, :cond_3

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->C()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->e()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v14, v15}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->o()V

    :goto_1
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v10

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v10, v2, v15}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v10, v3, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-interface {v10}, Landroidx/compose/runtime/i;->e()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v10}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v3, v2}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v10, v1, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const/4 v10, 0x1

    invoke-static {v13, v12, v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v2

    const/4 v1, 0x5

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    move-object/from16 v28, v5

    move/from16 v5, v16

    move-object/from16 v29, v7

    move v7, v1

    move-object v1, v8

    move-object v8, v15

    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v2

    sget-object v30, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/layout/b;->d()Landroidx/compose/foundation/layout/b$k;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/b$a;->i()Landroidx/compose/ui/b$b;

    move-result-object v4

    invoke-static {v3, v4, v14, v12}, Landroidx/compose/foundation/layout/i;->a(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v3

    invoke-static {v14, v12}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v4

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v5

    invoke-static {v14, v2}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v7

    instance-of v7, v7, Landroidx/compose/runtime/f;

    if-nez v7, :cond_7

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_7
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->C()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->e()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v14, v6}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_8
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->o()V

    :goto_2
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v6, v3, v7}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v6, v5, v3}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-interface {v6}, Landroidx/compose/runtime/i;->e()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {v6}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v3}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_a
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v31, Landroidx/compose/foundation/layout/l;->a:Landroidx/compose/foundation/layout/l;

    const/16 v2, 0xc

    int-to-float v15, v2

    invoke-static {v15}, Lo0/i;->g(F)F

    move-result v2

    const/16 v3, 0x10

    int-to-float v7, v3

    invoke-static {v7}, Lo0/i;->g(F)F

    move-result v3

    invoke-static {v13, v3, v2}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;

    move-result-object v2

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/layout/b;->c()Landroidx/compose/foundation/layout/b$d;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/b$a;->j()Landroidx/compose/ui/b$c;

    move-result-object v4

    invoke-static {v3, v4, v14, v12}, Landroidx/compose/foundation/layout/a0;->b(Landroidx/compose/foundation/layout/b$d;Landroidx/compose/ui/b$c;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v3

    invoke-static {v14, v12}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v4

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v5

    invoke-static {v14, v2}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/f;

    if-nez v8, :cond_b

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_b
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->C()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->e()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v14, v6}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_c
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->o()V

    :goto_3
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v6, v3, v8}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v6, v5, v3}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-interface {v6}, Landroidx/compose/runtime/i;->e()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-interface {v6}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v3}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_e
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v32, Landroidx/compose/foundation/layout/d0;->a:Landroidx/compose/foundation/layout/d0;

    sget v2, Lcom/transsion/home/R$string;->filter_more_title:I

    invoke-static {v2, v14, v12}, Li0/h;->a(ILandroidx/compose/runtime/i;I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    move-object v1, v2

    sget-object v33, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v2

    move-object v4, v9

    move-object v9, v2

    sget-object v34, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/text/font/p$a;->e()Landroidx/compose/ui/text/font/p;

    move-result-object v8

    sget-object v2, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/p$a;->b()I

    move-result v16

    const/16 v35, 0x12

    invoke-static/range {v35 .. v35}, Lo0/x;->c(I)J

    move-result-wide v5

    sget-object v2, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/u1$a;->f()J

    move-result-wide v19

    move-object/from16 v36, v3

    move-object v2, v4

    move-wide/from16 v3, v19

    int-to-float v10, v12

    invoke-static {v10}, Lo0/i;->g(F)F

    move-result v10

    invoke-static {v13, v10}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v20

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v19, v32

    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/b0;->a(Landroidx/compose/foundation/layout/c0;Landroidx/compose/ui/f;FZILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v10

    move-object/from16 v37, v2

    move-object v2, v10

    const/16 v24, 0x30

    const v25, 0x1f790

    const/4 v10, 0x0

    move/from16 v38, v7

    move-object v7, v10

    const-wide/16 v19, 0x0

    move-wide/from16 v10, v19

    const/16 v19, 0x0

    move-object/from16 v12, v19

    const/16 v18, 0x0

    move-object/from16 v39, v13

    move-object/from16 v13, v18

    const-wide/16 v18, 0x0

    move/from16 v40, v15

    move-wide/from16 v14, v18

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v23, 0x30d80

    move-object/from16 v22, p1

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    invoke-static/range {v40 .. v40}, Lo0/i;->g(F)F

    move-result v1

    move-object/from16 v14, v39

    invoke-static {v14, v1}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v1

    const/4 v15, 0x6

    move-object/from16 v13, p1

    invoke-static {v1, v13, v15}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    sget v1, Lcom/transsion/videodetail/R$drawable;->music_iv_close:I

    const/4 v12, 0x0

    invoke-static {v1, v13, v12}, Li0/e;->c(ILandroidx/compose/runtime/i;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v2, v13, v12}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v4

    const/16 v2, 0x15

    int-to-float v2, v2

    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v3

    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v3

    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v2

    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v16

    const v2, 0x4c5de2

    invoke-interface {v13, v2}, Landroidx/compose/runtime/i;->P(I)V

    move-object/from16 v11, v29

    invoke-interface {v13, v11}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_f

    sget-object v2, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v2}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_10

    :cond_f
    new-instance v3, Lcom/transsion/home/view/filter/popup/a;

    invoke-direct {v3, v11}, Lcom/transsion/home/view/filter/popup/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

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

    invoke-static {v1, v13, v12}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v2

    const/4 v10, 0x1

    int-to-float v9, v10

    invoke-static {v9}, Lo0/i;->g(F)F

    move-result v4

    const/16 v7, 0x180

    const/16 v8, 0x9

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material/DividerKt;->a(Landroidx/compose/ui/f;JFFLandroidx/compose/runtime/i;II)V

    invoke-static/range {v40 .. v40}, Lo0/i;->g(F)F

    move-result v1

    invoke-static {v14, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v1

    invoke-static {v1, v13, v15}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object/from16 v5, v31

    move-object v6, v14

    move/from16 v16, v9

    move v9, v1

    move v1, v10

    move-object v10, v2

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/j;->a(Landroidx/compose/foundation/layout/k;Landroidx/compose/ui/f;FZILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v2

    invoke-static/range {v38 .. v38}, Lo0/i;->g(F)F

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v2, v3, v9, v10, v8}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v2

    invoke-static {v2, v9, v1, v8}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v1

    const v7, -0x615d173a

    invoke-interface {v13, v7}, Landroidx/compose/runtime/i;->P(I)V

    move-object/from16 v6, v37

    invoke-interface {v13, v6}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v5, v36

    invoke-interface {v13, v5}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_11

    sget-object v2, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v2}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_12

    :cond_11
    new-instance v3, Lcom/transsion/home/view/filter/popup/b;

    invoke-direct {v3, v6, v5}, Lcom/transsion/home/view/filter/popup/b;-><init>(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->K()V

    const/16 v18, 0x0

    const/16 v19, 0xfe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v41, v5

    move-object/from16 v5, v20

    move-object/from16 v42, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v17

    move-object/from16 v10, p1

    move-object/from16 v43, v11

    move/from16 v11, v18

    move v15, v12

    move/from16 v12, v19

    invoke-static/range {v1 .. v12}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/f;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/t;ZLandroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/foundation/gestures/g;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;II)V

    sget v1, Lcom/tn/lib/widget/R$color;->white_10:I

    invoke-static {v1, v13, v15}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v2

    invoke-static/range {v16 .. v16}, Lo0/i;->g(F)F

    move-result v4

    const/16 v7, 0x180

    const/16 v8, 0x9

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v8}, Landroidx/compose/material/DividerKt;->a(Landroidx/compose/ui/f;JFFLandroidx/compose/runtime/i;II)V

    invoke-static/range {v40 .. v40}, Lo0/i;->g(F)F

    move-result v1

    invoke-static {v14, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v1

    const/4 v12, 0x6

    invoke-static {v1, v13, v12}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-static/range {v38 .. v38}, Lo0/i;->g(F)F

    move-result v1

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {v14, v1, v7, v2, v10}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v1

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/layout/b;->c()Landroidx/compose/foundation/layout/b$d;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/b$a;->j()Landroidx/compose/ui/b$c;

    move-result-object v4

    invoke-static {v3, v4, v13, v15}, Landroidx/compose/foundation/layout/a0;->b(Landroidx/compose/foundation/layout/b$d;Landroidx/compose/ui/b$c;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v3

    invoke-static {v13, v15}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v4

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v5

    invoke-static {v13, v1}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v1

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/f;

    if-nez v8, :cond_13

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_13
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->C()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->e()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v13, v6}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_14
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->o()V

    :goto_4
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v6, v3, v8}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v6, v5, v3}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-interface {v6}, Landroidx/compose/runtime/i;->e()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-interface {v6}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v3}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_16
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v6, v1, v3}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/b$a;->f()Landroidx/compose/ui/b$b;

    move-result-object v1

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/layout/b;->b()Landroidx/compose/foundation/layout/b$e;

    move-result-object v3

    const/16 v4, 0x30

    int-to-float v11, v4

    invoke-static {v11}, Lo0/i;->g(F)F

    move-result v4

    invoke-static {v14, v4}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Lo0/i;->g(F)F

    move-result v5

    sget v6, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v6, v13, v15}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v8

    const/16 v6, 0x64

    int-to-float v6, v6

    invoke-static {v6}, Lo0/i;->g(F)F

    move-result v16

    invoke-static/range {v16 .. v16}, Lq/g;->c(F)Lq/f;

    move-result-object v12

    invoke-static {v4, v5, v8, v9, v12}, Landroidx/compose/foundation/BorderKt;->e(Landroidx/compose/ui/f;FJLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    move-result-object v16

    const v4, -0x615d173a

    invoke-interface {v13, v4}, Landroidx/compose/runtime/i;->P(I)V

    move-object/from16 v4, v42

    invoke-interface {v13, v4}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v12, v41

    invoke-interface {v13, v12}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_17

    sget-object v5, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v5}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v5

    if-ne v8, v5, :cond_18

    :cond_17
    new-instance v8, Lcom/transsion/home/view/filter/popup/c;

    invoke-direct {v8, v4, v12}, Lcom/transsion/home/view/filter/popup/c;-><init>(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V

    invoke-interface {v13, v8}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v20, v8

    check-cast v20, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->K()V

    const/16 v21, 0x7

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v4

    const/16 v8, 0x36

    invoke-static {v3, v1, v13, v8}, Landroidx/compose/foundation/layout/i;->a(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v1

    invoke-static {v13, v15}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v3

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v5

    invoke-static {v13, v4}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/f;

    if-nez v8, :cond_19

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_19
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->C()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->e()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v13, v9}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_1a
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->o()V

    :goto_5
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v8

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v8, v1, v9}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v8, v5, v1}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-interface {v8}, Landroidx/compose/runtime/i;->e()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-interface {v8}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    :cond_1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3, v1}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_1c
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v8, v4, v1}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget v1, Lcom/transsion/home/R$string;->filter_reset:I

    invoke-static {v1, v13, v15}, Li0/h;->a(ILandroidx/compose/runtime/i;I)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v35 .. v35}, Lo0/x;->c(I)J

    move-result-wide v3

    move/from16 v29, v6

    move-wide v5, v3

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v9

    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/text/font/p$a;->e()Landroidx/compose/ui/text/font/p;

    move-result-object v8

    const/16 v3, 0x36

    sget v4, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v4, v13, v15}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v16

    move-wide/from16 v3, v16

    const/16 v15, 0x18

    int-to-float v15, v15

    invoke-static {v15}, Lo0/i;->g(F)F

    move-result v15

    invoke-static {v14, v15, v7, v2, v10}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v2

    const/16 v24, 0x0

    const v25, 0x1ff90

    const/4 v7, 0x0

    const-wide/16 v15, 0x0

    move/from16 v31, v11

    move-wide v10, v15

    const/4 v15, 0x0

    move-object/from16 v44, v12

    const/16 v16, 0x6

    move-object v12, v15

    move-object v13, v15

    const-wide/16 v17, 0x0

    move-object/from16 v45, v14

    move-wide/from16 v14, v17

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v23, 0x30c30

    move-object/from16 v22, p1

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->r()V

    invoke-static/range {v40 .. v40}, Lo0/i;->g(F)F

    move-result v1

    move-object/from16 v14, v45

    invoke-static {v14, v1}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v1

    move-object/from16 v15, p1

    const/4 v13, 0x6

    invoke-static {v1, v15, v13}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/b$a;->f()Landroidx/compose/ui/b$b;

    move-result-object v1

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/layout/b;->b()Landroidx/compose/foundation/layout/b$e;

    move-result-object v2

    invoke-static/range {v31 .. v31}, Lo0/i;->g(F)F

    move-result v3

    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v20

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v19, v32

    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/b0;->a(Landroidx/compose/foundation/layout/c0;Landroidx/compose/ui/f;FZILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$color;->white:I

    const/4 v7, 0x0

    invoke-static {v4, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v4

    invoke-static/range {v29 .. v29}, Lo0/i;->g(F)F

    move-result v6

    invoke-static {v6}, Lq/g;->c(F)Lq/f;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    move-result-object v16

    const v3, -0x6815fd56

    invoke-interface {v15, v3}, Landroidx/compose/runtime/i;->P(I)V

    move-object/from16 v3, v28

    invoke-interface {v15, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v5, v44

    invoke-interface {v15, v5}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    move-object/from16 v6, v43

    invoke-interface {v15, v6}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_1d

    sget-object v4, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v4}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v4

    if-ne v8, v4, :cond_1e

    :cond_1d
    new-instance v8, Lcom/transsion/home/view/filter/popup/d;

    invoke-direct {v8, v3, v5, v6}, Lcom/transsion/home/view/filter/popup/d;-><init>(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_1e
    move-object/from16 v20, v8

    check-cast v20, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->K()V

    const/16 v21, 0x7

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v3

    const/16 v4, 0x36

    invoke-static {v2, v1, v15, v4}, Landroidx/compose/foundation/layout/i;->a(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v1

    invoke-static {v15, v7}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v4

    invoke-static {v15, v3}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/f;

    if-nez v6, :cond_1f

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_1f
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->C()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->e()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v15, v5}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_20
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->o()V

    :goto_6
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v1, v6}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v5, v4, v1}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-interface {v5}, Landroidx/compose/runtime/i;->e()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-interface {v5}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    :cond_21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2, v1}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_22
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v5, v3, v1}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget v1, Lcom/transsion/home/R$string;->filter_confirm:I

    invoke-static {v1, v15, v7}, Li0/h;->a(ILandroidx/compose/runtime/i;I)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v35 .. v35}, Lo0/x;->c(I)J

    move-result-wide v5

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v9

    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/text/font/p$a;->e()Landroidx/compose/ui/text/font/p;

    move-result-object v8

    sget v2, Lcom/tn/lib/widget/R$color;->black:I

    invoke-static {v2, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v3

    const/16 v24, 0x0

    const v25, 0x1ff92

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, v16

    const-wide/16 v16, 0x0

    move-object/from16 v46, v14

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v23, 0x30c00

    move-object/from16 v22, p1

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->r()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->r()V

    invoke-static/range {v40 .. v40}, Lo0/i;->g(F)F

    move-result v1

    move-object/from16 v2, v46

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v1

    move-object/from16 v2, p1

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->r()V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/i;->r()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_23
    :goto_7
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/e$a;->e(Landroidx/compose/runtime/i;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

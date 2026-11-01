.class public abstract Lcom/transsion/home/view/filter/popup/e;
.super Ljava/lang/Object;


# static fields
.field private static a:F

.field private static b:F

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/view/filter/popup/e;->k(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V

    return-void
.end method

.method public static final synthetic B(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/view/filter/popup/e;->D(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic C(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/view/filter/popup/e;->E(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V

    return-void
.end method

.method private static final D(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static final E(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/home/view/filter/popup/e;->c:Z

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/Item;

    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getRangeVals()Lcom/transsion/home/bean/RangeValue;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/home/view/filter/popup/PopupFilterView;->Companion:Lcom/transsion/home/view/filter/popup/PopupFilterView$a;

    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getRangeVals()Lcom/transsion/home/bean/RangeValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMinVal()F

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getRangeVals()Lcom/transsion/home/bean/RangeValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/home/bean/RangeValue;->getMaxVal()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/transsion/home/view/filter/popup/PopupFilterView$a;->a(FF)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getFilterValsV2()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getFilterValsV2()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/FilterVal;

    invoke-virtual {v0}, Lcom/transsion/home/bean/FilterVal;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/e;->r(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/view/filter/popup/e;->s(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/e;->y(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/view/filter/popup/e;->z(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/e;->n(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/accompanist/systemuicontroller/c;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/e;->q(Lcom/google/accompanist/systemuicontroller/c;J)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/home/view/filter/popup/e;->o(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/home/view/filter/popup/e;->t(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/view/filter/popup/e;->l(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/view/filter/popup/e;->x(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final k(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V
    .locals 34

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    const v0, 0x59c9275b

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v5

    const/4 v4, 0x6

    and-int/lit8 v1, v8, 0x6

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {v5, v6}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, v8

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_1
    and-int/lit8 v3, v8, 0x30

    const/16 v10, 0x10

    const/16 v15, 0x20

    if-nez v3, :cond_3

    invoke-interface {v5, v7}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v15

    goto :goto_2

    :cond_2
    move v3, v10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    move v3, v1

    and-int/lit8 v1, v3, 0x13

    const/16 v9, 0x12

    if-ne v1, v9, :cond_5

    invoke-interface {v5}, Landroidx/compose/runtime/i;->h()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Landroidx/compose/runtime/i;->G()V

    move-object v9, v5

    goto/16 :goto_a

    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    const-string v9, "com.transsion.home.view.filter.popup.FilterItemView (MultiFilterPopupWindow.kt:280)"

    invoke-static {v0, v3, v1, v9}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_6
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    sget-object v1, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/b;->d()Landroidx/compose/foundation/layout/b$k;

    move-result-object v1

    sget-object v9, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v9}, Landroidx/compose/ui/b$a;->i()Landroidx/compose/ui/b$b;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v1, v9, v5, v11}, Landroidx/compose/foundation/layout/i;->a(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v1

    invoke-static {v5, v11}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v9

    invoke-interface {v5}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v12

    invoke-static {v5, v0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    invoke-interface {v5}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/f;

    if-nez v4, :cond_7

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_7
    invoke-interface {v5}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {v5}, Landroidx/compose/runtime/i;->e()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v5, v14}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_8
    invoke-interface {v5}, Landroidx/compose/runtime/i;->o()V

    :goto_4
    invoke-static {v5}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v4

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v4, v1, v14}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v12, v1}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-interface {v4}, Landroidx/compose/runtime/i;->e()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-interface {v4}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    :cond_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9, v1}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_a
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/l;->a:Landroidx/compose/foundation/layout/l;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10}, Lo0/x;->c(I)J

    move-result-wide v13

    sget-object v0, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v17

    sget-object v0, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/p$a;->c()Landroidx/compose/ui/text/font/p;

    move-result-object v16

    sget v0, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v0, v5, v11}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v0

    move v4, v11

    move-wide v11, v0

    const/16 v32, 0x0

    const v33, 0x1ff92

    const/4 v10, 0x0

    const/4 v0, 0x0

    move v1, v15

    move-object v15, v0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v31, 0x30c00

    move-object/from16 v30, v5

    invoke-static/range {v9 .. v33}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getRangeVals()Lcom/transsion/home/bean/RangeValue;

    move-result-object v0

    if-nez v0, :cond_12

    const v0, 0x2b5e4f74

    invoke-interface {v5, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getFilterValsV2()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f()Landroidx/compose/runtime/s1;

    move-result-object v9

    invoke-interface {v5, v9}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/lit8 v9, v9, -0x2c

    div-int/2addr v9, v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    const/4 v2, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v0, v13, v2, v12}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v14

    const/16 v0, 0xc

    int-to-float v0, v0

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v16

    const/16 v19, 0xd

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    sget-object v2, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/b;->c()Landroidx/compose/foundation/layout/b$d;

    move-result-object v2

    sget-object v12, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v12}, Landroidx/compose/ui/b$a;->j()Landroidx/compose/ui/b$c;

    move-result-object v12

    invoke-static {v2, v12, v5, v4}, Landroidx/compose/foundation/layout/a0;->b(Landroidx/compose/foundation/layout/b$d;Landroidx/compose/ui/b$c;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v2

    invoke-static {v5, v4}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v12

    invoke-interface {v5}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v13

    invoke-static {v5, v0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    invoke-interface {v5}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/f;

    if-nez v1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_b
    invoke-interface {v5}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {v5}, Landroidx/compose/runtime/i;->e()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v5, v15}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_c
    invoke-interface {v5}, Landroidx/compose/runtime/i;->o()V

    :goto_6
    invoke-static {v5}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v1

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v1, v2, v15}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v13, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-interface {v1}, Landroidx/compose/runtime/i;->e()Z

    move-result v13

    if-nez v13, :cond_d

    invoke-interface {v1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    :cond_d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v12, v2}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_e
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/foundation/layout/d0;->a:Landroidx/compose/foundation/layout/d0;

    const v0, -0x67ea498c

    invoke-interface {v5, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/transsion/home/bean/FilterVal;

    sget-object v15, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    int-to-float v0, v9

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v17

    and-int/lit8 v0, v3, 0xe

    shl-int/lit8 v1, v3, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v18, v0, v1

    move-object/from16 v0, p0

    const/16 v2, 0x20

    move-object v1, v14

    move/from16 v16, v9

    move v9, v2

    move-object/from16 v2, p1

    move/from16 v23, v3

    move-object/from16 v3, v17

    move v9, v4

    move-object v4, v5

    move-object v9, v5

    move/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/view/filter/popup/e;->m(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    const v0, -0x67ea3433

    invoke-interface {v9, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object/from16 v17, v12

    move-object/from16 v18, v15

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/b0;->a(Landroidx/compose/foundation/layout/c0;Landroidx/compose/ui/f;FZILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    invoke-interface {v9}, Landroidx/compose/runtime/i;->K()V

    move v4, v1

    move-object v5, v9

    move/from16 v9, v16

    move/from16 v3, v23

    goto :goto_7

    :cond_10
    move/from16 v23, v3

    move v1, v4

    move/from16 v16, v9

    move-object v9, v5

    invoke-interface {v9}, Landroidx/compose/runtime/i;->K()V

    invoke-interface {v9}, Landroidx/compose/runtime/i;->r()V

    move/from16 v9, v16

    const/16 v1, 0x20

    goto/16 :goto_5

    :cond_11
    move-object v9, v5

    invoke-interface {v9}, Landroidx/compose/runtime/i;->K()V

    goto :goto_9

    :cond_12
    move/from16 v23, v3

    move-object v9, v5

    const v0, 0x2b6a1d78

    invoke-interface {v9, v0}, Landroidx/compose/runtime/i;->P(I)V

    and-int/lit8 v0, v23, 0x7e

    invoke-static {v6, v7, v9, v0}, Lcom/transsion/home/view/filter/popup/e;->u(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/i;->K()V

    :goto_9
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    const/16 v1, 0x20

    int-to-float v1, v1

    invoke-static {v1}, Lo0/i;->g(F)F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v9, v1}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/i;->r()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_13
    :goto_a
    invoke-interface {v9}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Lul/e;

    invoke-direct {v1, v6, v7, v8}, Lul/e;-><init>(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_14
    return-void
.end method

.method private static final l(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/v1;->a(I)I

    move-result p2

    invoke-static {p0, p1, p3, p2}, Lcom/transsion/home/view/filter/popup/e;->k(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final m(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    const v0, 0x3a0834c0

    move-object/from16 v6, p4

    invoke-interface {v6, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v15

    and-int/lit8 v6, v5, 0x6

    if-nez v6, :cond_1

    invoke-interface {v15, v1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    and-int/lit8 v7, v5, 0x30

    const/16 v8, 0x20

    if-nez v7, :cond_3

    invoke-interface {v15, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_5

    invoke-interface {v15, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v5, 0xc00

    if-nez v7, :cond_7

    invoke-interface {v15, v4}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v6, v7

    :cond_7
    and-int/lit16 v7, v6, 0x493

    const/16 v10, 0x492

    if-ne v7, v10, :cond_9

    invoke-interface {v15}, Landroidx/compose/runtime/i;->h()Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v15}, Landroidx/compose/runtime/i;->G()V

    move-object v0, v15

    goto/16 :goto_a

    :cond_9
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, -0x1

    const-string v10, "com.transsion.home.view.filter.popup.GridItem (MultiFilterPopupWindow.kt:323)"

    invoke-static {v0, v6, v7, v10}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/snapshots/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/FilterVal;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_b

    const v0, 0x40f6c2b2

    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->P(I)V

    sget v0, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v0, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v10

    sget v0, Lcom/transsion/wrapperad/R$color;->white_40:I

    invoke-static {v0, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v12

    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    goto :goto_6

    :cond_b
    const v0, 0x40f905a5

    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->P(I)V

    sget v0, Lcom/tn/lib/widget/R$color;->text_03:I

    invoke-static {v0, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v10

    sget v0, Lcom/tn/lib/widget/R$color;->transparent:I

    invoke-static {v0, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v12

    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    :goto_6
    sget-object v0, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/b$a;->d()Landroidx/compose/ui/b;

    move-result-object v0

    int-to-float v14, v8

    invoke-static {v14}, Lo0/i;->g(F)F

    move-result v14

    invoke-static {v4, v14}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v14

    const/4 v7, 0x1

    int-to-float v8, v7

    invoke-static {v8}, Lo0/i;->g(F)F

    move-result v8

    const/16 v7, 0x64

    int-to-float v7, v7

    invoke-static {v7}, Lo0/i;->g(F)F

    move-result v18

    invoke-static/range {v18 .. v18}, Lq/g;->c(F)Lq/f;

    move-result-object v9

    invoke-static {v14, v8, v10, v11, v9}, Landroidx/compose/foundation/BorderKt;->e(Landroidx/compose/ui/f;FJLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    move-result-object v8

    invoke-static {v7}, Lo0/i;->g(F)F

    move-result v7

    invoke-static {v7}, Lq/g;->c(F)Lq/f;

    move-result-object v7

    invoke-static {v8, v12, v13, v7}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    move-result-object v20

    const v7, -0x6815fd56

    invoke-interface {v15, v7}, Landroidx/compose/runtime/i;->P(I)V

    and-int/lit16 v7, v6, 0x380

    const/16 v8, 0x100

    if-ne v7, v8, :cond_c

    const/4 v7, 0x1

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    :goto_7
    invoke-interface {v15, v1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    and-int/lit8 v6, v6, 0x70

    const/16 v8, 0x20

    if-ne v6, v8, :cond_d

    const/16 v17, 0x1

    goto :goto_8

    :cond_d
    const/16 v17, 0x0

    :goto_8
    or-int v6, v7, v17

    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_e

    sget-object v6, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v6}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v6

    if-ne v7, v6, :cond_f

    :cond_e
    new-instance v7, Lul/i;

    invoke-direct {v7, v3, v1, v2}, Lul/i;-><init>(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)V

    invoke-interface {v15, v7}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v24, v7

    check-cast v24, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    const/16 v25, 0x7

    const/16 v26, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v26}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/b;Z)Landroidx/compose/ui/layout/t;

    move-result-object v0

    invoke-static {v15, v7}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v8

    invoke-interface {v15}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v7

    invoke-static {v15, v6}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v6

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v10

    invoke-interface {v15}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v11

    instance-of v11, v11, Landroidx/compose/runtime/f;

    if-nez v11, :cond_10

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_10
    invoke-interface {v15}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {v15}, Landroidx/compose/runtime/i;->e()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v15, v10}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_11
    invoke-interface {v15}, Landroidx/compose/runtime/i;->o()V

    :goto_9
    invoke-static {v15}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v10

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v10, v0, v11}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v10, v7, v0}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-interface {v10}, Landroidx/compose/runtime/i;->e()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-interface {v10}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    :cond_12
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v7}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v7, v0}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_13
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v10, v6, v0}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/FilterVal;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0xe

    invoke-static {v0}, Lo0/x;->c(I)J

    move-result-wide v10

    sget-object v0, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v14

    sget-object v0, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/p$a;->c()Landroidx/compose/ui/text/font/p;

    move-result-object v13

    sget v0, Lcom/tn/lib/widget/R$color;->white:I

    const/4 v7, 0x0

    invoke-static {v0, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v8

    const/16 v29, 0x0

    const v30, 0x1ff92

    const/4 v7, 0x0

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    move-object v0, v15

    move-wide/from16 v15, v16

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

    invoke-interface {v0}, Landroidx/compose/runtime/i;->r()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_14
    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v6

    if-eqz v6, :cond_15

    new-instance v7, Lul/j;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lul/j;-><init>(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_15
    return-void
.end method

.method private static final n(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/home/bean/FilterVal;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final o(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 6

    or-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Landroidx/compose/runtime/v1;->a(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/view/filter/popup/e;->m(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final p(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    const-string v0, "filterItems"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectItems"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismiss"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x415fa82e

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v13

    and-int/lit8 v1, v12, 0x6

    if-nez v1, :cond_1

    invoke-interface {v13, v9}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v12

    goto :goto_1

    :cond_1
    move v1, v12

    :goto_1
    and-int/lit8 v2, v12, 0x30

    if-nez v2, :cond_3

    invoke-interface {v13, v10}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v12, 0x180

    const/16 v5, 0x100

    if-nez v2, :cond_5

    invoke-interface {v13, v11}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v1, 0x93

    const/16 v6, 0x92

    if-ne v2, v6, :cond_7

    invoke-interface {v13}, Landroidx/compose/runtime/i;->h()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v13}, Landroidx/compose/runtime/i;->G()V

    goto/16 :goto_f

    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    const-string v6, "com.transsion.home.view.filter.popup.MultiFilterPopup (MultiFilterPopupWindow.kt:66)"

    invoke-static {v0, v1, v2, v6}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x1

    invoke-static {v0, v13, v2, v14}, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt;->e(Landroid/view/Window;Landroidx/compose/runtime/i;II)Lcom/google/accompanist/systemuicontroller/c;

    move-result-object v6

    sget v7, Lcom/tn/lib/widget/R$color;->black_80:I

    invoke-static {v7, v13, v2}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v7

    new-instance v15, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v15, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, -0x615d173a

    invoke-interface {v13, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface {v13, v7, v8}, Landroidx/compose/runtime/i;->d(J)Z

    move-result v17

    or-int v16, v16, v17

    invoke-interface {v13}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v14

    if-nez v16, :cond_9

    sget-object v16, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_a

    :cond_9
    new-instance v14, Lul/a;

    invoke-direct {v14, v6, v7, v8}, Lul/a;-><init>(Lcom/google/accompanist/systemuicontroller/c;J)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_a
    check-cast v14, Ljava/lang/Runnable;

    invoke-interface {v13}, Landroidx/compose/runtime/i;->K()V

    const-wide/16 v3, 0x64

    invoke-virtual {v15, v14, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-interface {v13, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit16 v1, v1, 0x380

    if-ne v1, v5, :cond_b

    const/4 v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    or-int/2addr v0, v1

    invoke-interface {v13}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_c

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_d

    :cond_c
    new-instance v1, Lul/b;

    invoke-direct {v1, v6, v11}, Lul/b;-><init>(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_d
    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13}, Landroidx/compose/runtime/i;->K()V

    new-instance v6, Landroidx/compose/runtime/snapshots/t;

    invoke-direct {v6}, Landroidx/compose/runtime/snapshots/t;-><init>()V

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/snapshots/t;->putAll(Ljava/util/Map;)V

    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->g()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-interface {v13, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/s1;

    move-result-object v1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/e;

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_e

    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    goto :goto_7

    :cond_f
    const/4 v3, 0x0

    :goto_7
    const v4, 0x4c5de2

    invoke-interface {v13, v4}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v13}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v15

    if-nez v5, :cond_10

    sget-object v5, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v5}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v5

    if-ne v15, v5, :cond_16

    :cond_10
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x23

    if-lt v5, v15, :cond_15

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "dimen"

    const-string v15, "android"

    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2, v5, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_8
    if-eqz v3, :cond_12

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object v2

    if-eqz v2, :cond_12

    iget v2, v2, Lz0/c;->b:I

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    :goto_9
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v3, :cond_13

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object v2

    if-eqz v2, :cond_13

    iget v2, v2, Lz0/c;->d:I

    :goto_a
    const/16 v3, 0x10

    goto :goto_b

    :cond_13
    const/4 v2, 0x0

    goto :goto_a

    :goto_b
    int-to-float v3, v3

    invoke-interface {v1}, Lo0/e;->getDensity()F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    if-lez v2, :cond_14

    add-int/2addr v2, v3

    goto :goto_c

    :cond_14
    const/16 v2, 0x20

    int-to-float v2, v2

    invoke-interface {v1}, Lo0/e;->getDensity()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    :goto_c
    invoke-interface {v1, v0}, Lo0/e;->x0(I)F

    move-result v0

    invoke-static {v0}, Lo0/i;->d(F)Lo0/i;

    move-result-object v0

    invoke-interface {v1, v2}, Lo0/e;->x0(I)F

    move-result v1

    invoke-static {v1}, Lo0/i;->d(F)Lo0/i;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    :goto_d
    move-object v15, v0

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    int-to-float v0, v0

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v1

    invoke-static {v1}, Lo0/i;->d(F)Lo0/i;

    move-result-object v1

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    invoke-static {v0}, Lo0/i;->d(F)Lo0/i;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_d

    :goto_e
    invoke-interface {v13, v15}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_16
    check-cast v15, Lkotlin/Pair;

    invoke-interface {v13}, Landroidx/compose/runtime/i;->K()V

    invoke-virtual {v15}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/i;

    invoke-virtual {v0}, Lo0/i;->l()F

    move-result v3

    invoke-virtual {v15}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/i;

    invoke-virtual {v0}, Lo0/i;->l()F

    move-result v5

    invoke-interface {v13, v4}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_17

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_18

    :cond_17
    new-instance v1, Lul/c;

    invoke-direct {v1, v14}, Lul/c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_18
    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/i;->K()V

    new-instance v16, Landroidx/compose/ui/window/c;

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v16

    invoke-direct/range {v18 .. v23}, Landroidx/compose/ui/window/c;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/transsion/home/view/filter/popup/e$a;

    move-object v0, v4

    move-wide v1, v7

    move-object v8, v4

    move v4, v5

    move-object/from16 v5, p0

    move-object v7, v14

    move-object v14, v8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/transsion/home/view/filter/popup/e$a;-><init>(JFFLjava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/t;)V

    const/16 v0, 0x36

    const v1, -0x5497e4bb

    const/4 v2, 0x1

    invoke-static {v1, v2, v14, v13, v0}, Landroidx/compose/runtime/internal/b;->d(IZLjava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/internal/a;

    move-result-object v3

    const/16 v5, 0x1b0

    const/4 v6, 0x0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object v4, v13

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_19
    :goto_f
    invoke-interface {v13}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v1, Lul/d;

    invoke-direct {v1, v9, v10, v11, v12}, Lul/d;-><init>(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method private static final q(Lcom/google/accompanist/systemuicontroller/c;J)V
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

.method private static final r(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
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

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final s(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final t(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/v1;->a(I)I

    move-result p3

    invoke-static {p0, p1, p2, p4, p3}, Lcom/transsion/home/view/filter/popup/e;->p(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final u(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const v3, -0x385d95eb

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v15

    and-int/lit8 v4, v2, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/2addr v4, v2

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/lit8 v6, v2, 0x30

    if-nez v6, :cond_3

    invoke-interface {v15, v1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :cond_3
    move v12, v4

    and-int/lit8 v4, v12, 0x13

    const/16 v6, 0x12

    if-ne v4, v6, :cond_5

    invoke-interface {v15}, Landroidx/compose/runtime/i;->h()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v15}, Landroidx/compose/runtime/i;->G()V

    move-object/from16 v29, v15

    goto/16 :goto_c

    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, -0x1

    const-string v6, "com.transsion.home.view.filter.popup.StepRangeSlider (MultiFilterPopupWindow.kt:375)"

    invoke-static {v3, v12, v4, v6}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getRangeVals()Lcom/transsion/home/bean/RangeValue;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMinVal()F

    move-result v4

    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMaxVal()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/snapshots/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v16, :cond_7

    const-string v8, ","

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_4

    :cond_7
    move-object v8, v7

    :goto_4
    const/4 v13, 0x0

    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_5

    :cond_8
    move v9, v13

    :goto_5
    const/4 v14, 0x1

    if-lt v9, v5, :cond_b

    if-eqz v8, :cond_9

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    invoke-static {v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_6

    :cond_9
    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMinVal()F

    move-result v4

    :goto_6
    if-eqz v8, :cond_a

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_a

    invoke-static {v6}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMaxVal()F

    move-result v6

    :cond_b
    :goto_7
    const v8, 0x6e3c21fe

    invoke-interface {v15, v8}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v8

    sget-object v29, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_c

    invoke-static {v4, v6}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v8

    invoke-static {v8, v7, v5, v7}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v8

    invoke-interface {v15, v8}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_c
    move-object v7, v8

    check-cast v7, Landroidx/compose/runtime/i1;

    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    sget-boolean v5, Lcom/transsion/home/view/filter/popup/e;->c:Z

    if-eqz v5, :cond_d

    invoke-static {v4, v6}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/transsion/home/view/filter/popup/e;->w(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)V

    sput-boolean v13, Lcom/transsion/home/view/filter/popup/e;->c:Z

    :cond_d
    sget-object v8, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    sget-object v30, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/layout/b;->d()Landroidx/compose/foundation/layout/b$k;

    move-result-object v4

    sget-object v31, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/b$a;->i()Landroidx/compose/ui/b$b;

    move-result-object v5

    invoke-static {v4, v5, v15, v13}, Landroidx/compose/foundation/layout/i;->a(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v4

    invoke-static {v15, v13}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v5

    invoke-interface {v15}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v6

    invoke-static {v15, v8}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v9

    sget-object v32, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v10

    invoke-interface {v15}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v11

    instance-of v11, v11, Landroidx/compose/runtime/f;

    if-nez v11, :cond_e

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_e
    invoke-interface {v15}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {v15}, Landroidx/compose/runtime/i;->e()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v15, v10}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_f
    invoke-interface {v15}, Landroidx/compose/runtime/i;->o()V

    :goto_8
    invoke-static {v15}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v10

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v10, v4, v11}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v10, v6, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-interface {v10}, Landroidx/compose/runtime/i;->e()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-interface {v10}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    :cond_10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5, v4}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_11
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v10, v9, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/foundation/layout/l;->a:Landroidx/compose/foundation/layout/l;

    invoke-static {v7}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->d(F)I

    move-result v33

    invoke-static {v7}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->d(F)I

    move-result v34

    invoke-static {v7}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v35

    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMinVal()F

    move-result v4

    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMaxVal()F

    move-result v5

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v36

    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMaxVal()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v3, v14

    sget-object v4, Landroidx/compose/material/k;->a:Landroidx/compose/material/k;

    sget v5, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v5, v15, v13}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v5

    sget v9, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v9, v15, v13}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v9

    sget v11, Lcom/tn/lib/widget/R$color;->white_40:I

    invoke-static {v11, v15, v13}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v16

    move v11, v13

    move/from16 v37, v14

    move-wide/from16 v13, v16

    move-object/from16 v16, v7

    sget v7, Lcom/tn/lib/widget/R$color;->transparent:I

    invoke-static {v7, v15, v11}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v17

    sget v7, Lcom/tn/lib/widget/R$color;->transparent:I

    invoke-static {v7, v15, v11}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v19

    sget v27, Landroidx/compose/material/k;->b:I

    const/16 v28, 0x32a

    const-wide/16 v21, 0x0

    move-object/from16 v39, v8

    move-object/from16 v38, v16

    move-wide/from16 v7, v21

    move/from16 v40, v12

    move-wide/from16 v11, v21

    move-object/from16 p2, v15

    move-wide/from16 v15, v21

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v25, p2

    invoke-virtual/range {v4 .. v28}, Landroidx/compose/material/k;->a(JJJJJJJJJJLandroidx/compose/runtime/i;III)Landroidx/compose/material/j;

    move-result-object v11

    const v4, 0x4c5de2

    move-object/from16 v15, p2

    invoke-interface {v15, v4}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_12

    new-instance v4, Lul/f;

    move-object/from16 v8, v38

    invoke-direct {v4, v8}, Lul/f;-><init>(Landroidx/compose/runtime/i1;)V

    invoke-interface {v15, v4}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    goto :goto_9

    :cond_12
    move-object/from16 v8, v38

    :goto_9
    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    const v4, -0x6815fd56

    invoke-interface {v15, v4}, Landroidx/compose/runtime/i;->P(I)V

    and-int/lit8 v4, v40, 0x70

    const/16 v6, 0x20

    if-ne v4, v6, :cond_13

    move/from16 v13, v37

    goto :goto_a

    :cond_13
    const/4 v13, 0x0

    :goto_a
    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v13

    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_14

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v4

    if-ne v6, v4, :cond_15

    :cond_14
    new-instance v6, Lul/g;

    invoke-direct {v6, v1, v0, v8}, Lul/g;-><init>(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)V

    invoke-interface {v15, v6}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_15
    move-object v10, v6

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    const/16 v13, 0x30

    const/16 v14, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, v35

    move-object/from16 v8, v36

    move v9, v3

    move-object v12, v15

    invoke-static/range {v4 .. v14}, Landroidx/compose/material/SliderKt;->b(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/f;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/j;Landroidx/compose/runtime/i;II)V

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/layout/b;->c()Landroidx/compose/foundation/layout/b$d;

    move-result-object v3

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/b$a;->j()Landroidx/compose/ui/b$c;

    move-result-object v4

    const/4 v13, 0x0

    invoke-static {v3, v4, v15, v13}, Landroidx/compose/foundation/layout/a0;->b(Landroidx/compose/foundation/layout/b$d;Landroidx/compose/ui/b$c;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v3

    invoke-static {v15, v13}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v4

    invoke-interface {v15}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v5

    move-object/from16 v14, v39

    invoke-static {v15, v14}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-interface {v15}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/f;

    if-nez v8, :cond_16

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_16
    invoke-interface {v15}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {v15}, Landroidx/compose/runtime/i;->e()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v15, v7}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_17
    invoke-interface {v15}, Landroidx/compose/runtime/i;->o()V

    :goto_b
    invoke-static {v15}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v7

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v7, v3, v8}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v7, v5, v3}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-interface {v7}, Landroidx/compose/runtime/i;->e()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    :cond_18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4, v3}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_19
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v7, v6, v3}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/foundation/layout/d0;->a:Landroidx/compose/foundation/layout/d0;

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v29, 0xc

    invoke-static/range {v29 .. v29}, Lo0/x;->c(I)J

    move-result-wide v8

    sget-object v30, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v12

    sget-object v31, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/text/font/p$a;->e()Landroidx/compose/ui/text/font/p;

    move-result-object v11

    sget v5, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v5, v15, v13}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v6

    const/4 v5, 0x5

    int-to-float v5, v5

    invoke-static {v5}, Lo0/i;->g(F)F

    move-result v17

    const/16 v21, 0xe

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v14

    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v5

    const/16 v27, 0x0

    const v28, 0x1ff90

    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v32, v14

    move-wide/from16 v13, v16

    const/16 v16, 0x0

    move-object/from16 p2, v15

    move-object/from16 v15, v16

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v26, 0x30c30

    move-object/from16 v25, p2

    invoke-static/range {v4 .. v28}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v16, v3

    move-object/from16 v17, v32

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/b0;->a(Landroidx/compose/foundation/layout/c0;Landroidx/compose/ui/f;FZILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v3

    move-object/from16 v15, p2

    const/4 v5, 0x0

    invoke-static {v3, v15, v5}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Lo0/x;->c(I)J

    move-result-wide v8

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v12

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/text/font/p$a;->e()Landroidx/compose/ui/text/font/p;

    move-result-object v11

    sget v3, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v3, v15, v5}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v6

    const v28, 0x1ff92

    const/4 v5, 0x0

    const-wide/16 v13, 0x0

    const/4 v3, 0x0

    move-object/from16 v29, v15

    move-object v15, v3

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v26, 0x30c00

    move-object/from16 v25, v29

    invoke-static/range {v4 .. v28}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/i;->r()V

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/i;->r()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1a
    :goto_c
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v3

    if-eqz v3, :cond_1b

    new-instance v4, Lul/h;

    invoke-direct {v4, v0, v1, v2}, Lul/h;-><init>(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_1b
    return-void
.end method

.method private static final v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/ranges/ClosedFloatingPointRange;

    return-object p0
.end method

.method private static final w(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final x(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {p0}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_0
    float-to-int v1, v0

    sget v2, Lcom/transsion/home/view/filter/popup/e;->b:F

    float-to-int v2, v2

    if-eq v1, v2, :cond_1

    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/f0;->b(J)V

    :cond_1
    sput v0, Lcom/transsion/home/view/filter/popup/e;->b:F

    invoke-static {p0, p1}, Lcom/transsion/home/view/filter/popup/e;->w(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)V

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_2

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    sput p0, Lcom/transsion/home/view/filter/popup/e;->a:F

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final y(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)Lkotlin/Unit;
    .locals 2

    invoke-static {p2}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {p2}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget v0, Lcom/transsion/home/view/filter/popup/e;->a:F

    invoke-static {v0, v0}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/home/view/filter/popup/e;->w(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/home/view/filter/popup/PopupFilterView;->Companion:Lcom/transsion/home/view/filter/popup/PopupFilterView$a;

    invoke-static {p2}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {p2}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/transsion/home/view/filter/popup/PopupFilterView$a;->a(FF)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final z(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/v1;->a(I)I

    move-result p2

    invoke-static {p0, p1, p3, p2}, Lcom/transsion/home/view/filter/popup/e;->u(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

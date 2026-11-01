.class final Landroidx/compose/foundation/CombinedClickableNodeImpl;
.super Landroidx/compose/foundation/AbstractClickableNode;

# interfaces
.implements Landroidx/compose/ui/node/e1;


# instance fields
.field private J:Ljava/lang/String;

.field private K:Lkotlin/jvm/functions/Function0;

.field private L:Lkotlin/jvm/functions/Function0;


# direct methods
.method private constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;)V
    .locals 9

    move-object v8, p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p2

    iput-object v0, v8, Landroidx/compose/foundation/CombinedClickableNodeImpl;->J:Ljava/lang/String;

    move-object v0, p3

    iput-object v0, v8, Landroidx/compose/foundation/CombinedClickableNodeImpl;->K:Lkotlin/jvm/functions/Function0;

    move-object v0, p4

    iput-object v0, v8, Landroidx/compose/foundation/CombinedClickableNodeImpl;->L:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroidx/compose/foundation/CombinedClickableNodeImpl;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;)V

    return-void
.end method

.method public static final synthetic c2(Landroidx/compose/foundation/CombinedClickableNodeImpl;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNodeImpl;->L:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic d2(Landroidx/compose/foundation/CombinedClickableNodeImpl;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNodeImpl;->K:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public P1(Landroidx/compose/ui/semantics/n;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNodeImpl;->K:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNodeImpl;->J:Ljava/lang/String;

    new-instance v1, Landroidx/compose/foundation/CombinedClickableNodeImpl$applyAdditionalSemantics$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/CombinedClickableNodeImpl$applyAdditionalSemantics$1;-><init>(Landroidx/compose/foundation/CombinedClickableNodeImpl;)V

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->m(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method public Q1(Landroidx/compose/ui/input/pointer/e0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->V1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNodeImpl;->L:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$2;-><init>(Landroidx/compose/foundation/CombinedClickableNodeImpl;)V

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->V1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNodeImpl;->K:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$3;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$3;-><init>(Landroidx/compose/foundation/CombinedClickableNodeImpl;)V

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    new-instance v5, Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$4;

    invoke-direct {v5, p0, v1}, Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$4;-><init>(Landroidx/compose/foundation/CombinedClickableNodeImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v6, Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$5;

    invoke-direct {v6, p0}, Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$5;-><init>(Landroidx/compose/foundation/CombinedClickableNodeImpl;)V

    move-object v2, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->i(Landroidx/compose/ui/input/pointer/e0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public e2(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;)V
    .locals 9

    move-object v7, p0

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    iget-object v3, v7, Landroidx/compose/foundation/CombinedClickableNodeImpl;->J:Ljava/lang/String;

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v0, v7, Landroidx/compose/foundation/CombinedClickableNodeImpl;->J:Ljava/lang/String;

    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    :cond_0
    iget-object v0, v7, Landroidx/compose/foundation/CombinedClickableNodeImpl;->K:Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-nez v1, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-eq v0, v5, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->S1()V

    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    iput-object v1, v7, Landroidx/compose/foundation/CombinedClickableNodeImpl;->K:Lkotlin/jvm/functions/Function0;

    iget-object v1, v7, Landroidx/compose/foundation/CombinedClickableNodeImpl;->L:Lkotlin/jvm/functions/Function0;

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    if-nez v2, :cond_5

    move v4, v3

    :cond_5
    if-eq v1, v4, :cond_6

    move v0, v3

    :cond_6
    iput-object v2, v7, Landroidx/compose/foundation/CombinedClickableNodeImpl;->L:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->V1()Z

    move-result v1

    move/from16 v4, p7

    if-eq v1, v4, :cond_7

    move v8, v3

    goto :goto_4

    :cond_7
    move v8, v0

    :goto_4
    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/AbstractClickableNode;->b2(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->Z1()Lkotlin/Unit;

    :cond_8
    return-void
.end method

.class public final Landroidx/compose/ui/node/h0;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/node/LayoutNode;

.field private final b:Landroidx/compose/ui/node/j;

.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/j;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/h0;->a:Landroidx/compose/ui/node/LayoutNode;

    iput-object p2, p0, Landroidx/compose/ui/node/h0;->b:Landroidx/compose/ui/node/j;

    iput-object p3, p0, Landroidx/compose/ui/node/h0;->c:Ljava/util/List;

    return-void
.end method

.method private final b(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 11

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i0()I

    move-result v3

    const v6, 0x7fffffff

    if-eq v3, v6, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v3

    if-ne v3, v5, :cond_c

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/compose/ui/node/h0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/node/k0$a;

    invoke-virtual {v9}, Landroidx/compose/ui/node/k0$a;->a()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v10

    invoke-static {v10, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Landroidx/compose/ui/node/k0$a;->c()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-object v8, v1

    :goto_2
    if-eqz v8, :cond_4

    return v5

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v1, p0, Landroidx/compose/ui/node/h0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/j;->d(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object p1

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadMeasuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq p1, v1, :cond_7

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result p1

    if-ne p1, v5, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result p1

    if-ne p1, v5, :cond_6

    goto :goto_3

    :cond_6
    sget-object p1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v2, p1, :cond_8

    :cond_7
    :goto_3
    move v4, v5

    :cond_8
    return v4

    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Q()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v1, p0, Landroidx/compose/ui/node/h0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/j;->d(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p1

    if-nez p1, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v2, p1, :cond_a

    sget-object p1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v2, p1, :cond_b

    :cond_a
    move v4, v5

    :cond_b
    return v4

    :cond_c
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->G0()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroidx/compose/ui/node/h0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    move v7, v4

    :goto_4
    if-ge v7, v6, :cond_e

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/node/k0$a;

    invoke-virtual {v9}, Landroidx/compose/ui/node/k0$a;->a()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v10

    invoke-static {v10, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v9}, Landroidx/compose/ui/node/k0$a;->c()Z

    move-result v9

    if-eqz v9, :cond_d

    move-object v1, v8

    goto :goto_5

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    if-eqz v1, :cond_f

    return v5

    :cond_f
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroidx/compose/ui/node/h0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v1, p1, v5}, Landroidx/compose/ui/node/j;->e(Landroidx/compose/ui/node/LayoutNode;Z)Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result v1

    if-ne v1, v5, :cond_10

    goto :goto_6

    :cond_10
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadMeasuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v2, v1, :cond_11

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result v0

    if-ne v0, v5, :cond_12

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    :goto_6
    move v4, v5

    :cond_12
    return v4

    :cond_13
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->S()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroidx/compose/ui/node/h0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v1, p1, v5}, Landroidx/compose/ui/node/j;->e(Landroidx/compose/ui/node/LayoutNode;Z)Z

    move-result v1

    if-nez v1, :cond_14

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->S()Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadMeasuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v2, v1, :cond_14

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v2, v1, :cond_14

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    :cond_14
    move v4, v5

    :cond_15
    return v4

    :cond_16
    return v5
.end method

.method private final c(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 4

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/h0;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->E()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p0, v3}, Landroidx/compose/ui/node/h0;->c(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private final d()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tree state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(value)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "append(\'\\n\')"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/node/h0;->a:Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/compose/ui/node/h0;->e(Landroidx/compose/ui/node/h0;Ljava/lang/StringBuilder;Landroidx/compose/ui/node/LayoutNode;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final e(Landroidx/compose/ui/node/h0;Ljava/lang/StringBuilder;Landroidx/compose/ui/node/LayoutNode;I)V
    .locals 4

    invoke-direct {p0, p2}, Landroidx/compose/ui/node/h0;->f(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    if-ge v1, p3, :cond_0

    const-string v3, ".."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "append(value)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "append(\'\\n\')"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->E()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    invoke-static {p0, p1, v1, p3}, Landroidx/compose/ui/node/h0;->e(Landroidx/compose/ui/node/h0;Ljava/lang/StringBuilder;Landroidx/compose/ui/node/LayoutNode;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final f(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[!isPlaced]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[measuredByParent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->a0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/h0;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "[INCONSISTENT]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/h0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/h0;->c(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/node/h0;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistency found!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

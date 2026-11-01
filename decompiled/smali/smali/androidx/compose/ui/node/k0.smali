.class public final Landroidx/compose/ui/node/k0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/k0$a;,
        Landroidx/compose/ui/node/k0$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/ui/node/LayoutNode;

.field private final b:Landroidx/compose/ui/node/j;

.field private c:Z

.field private d:Z

.field private final e:Landroidx/compose/ui/node/OnPositionedDispatcher;

.field private final f:Landroidx/compose/runtime/collection/b;

.field private g:J

.field private final h:Landroidx/compose/runtime/collection/b;

.field private i:Lo0/b;

.field private final j:Landroidx/compose/ui/node/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    new-instance v0, Landroidx/compose/ui/node/j;

    sget-object v1, Landroidx/compose/ui/node/y0;->d1:Landroidx/compose/ui/node/y0$a;

    invoke-virtual {v1}, Landroidx/compose/ui/node/y0$a;->a()Z

    move-result v2

    invoke-direct {v0, v2}, Landroidx/compose/ui/node/j;-><init>(Z)V

    iput-object v0, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    new-instance v2, Landroidx/compose/ui/node/OnPositionedDispatcher;

    invoke-direct {v2}, Landroidx/compose/ui/node/OnPositionedDispatcher;-><init>()V

    iput-object v2, p0, Landroidx/compose/ui/node/k0;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    new-instance v2, Landroidx/compose/runtime/collection/b;

    const/16 v3, 0x10

    new-array v4, v3, [Landroidx/compose/ui/node/y0$b;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object v2, p0, Landroidx/compose/ui/node/k0;->f:Landroidx/compose/runtime/collection/b;

    const-wide/16 v6, 0x1

    iput-wide v6, p0, Landroidx/compose/ui/node/k0;->g:J

    new-instance v2, Landroidx/compose/runtime/collection/b;

    new-array v3, v3, [Landroidx/compose/ui/node/k0$a;

    invoke-direct {v2, v3, v5}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object v2, p0, Landroidx/compose/ui/node/k0;->h:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v1}, Landroidx/compose/ui/node/y0$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/ui/node/h0;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->g()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Landroidx/compose/ui/node/h0;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/j;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroidx/compose/ui/node/k0;->j:Landroidx/compose/ui/node/h0;

    return-void
.end method

.method private final A(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    aget-object v2, p1, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p0, v2}, Landroidx/compose/ui/node/k0;->o(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroidx/compose/ui/node/g0;->a(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroidx/compose/ui/node/k0;->B(Landroidx/compose/ui/node/LayoutNode;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Landroidx/compose/ui/node/k0;->A(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_3
    return-void
.end method

.method private final B(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->i:Lo0/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/node/k0;->e(Landroidx/compose/ui/node/LayoutNode;Lo0/b;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/node/k0;->f(Landroidx/compose/ui/node/LayoutNode;Lo0/b;)Z

    :goto_1
    return-void
.end method

.method public static synthetic H(Landroidx/compose/ui/node/k0;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/k0;->G(Landroidx/compose/ui/node/LayoutNode;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(Landroidx/compose/ui/node/k0;)Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    return-object p0
.end method

.method private final b()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->f:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/node/y0$b;

    invoke-interface {v3}, Landroidx/compose/ui/node/y0$b;->f()V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->f:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->h()V

    return-void
.end method

.method public static synthetic d(Landroidx/compose/ui/node/k0;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/k0;->c(Z)V

    return-void
.end method

.method private final e(Landroidx/compose/ui/node/LayoutNode;Lo0/b;)Z
    .locals 9

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->I0(Lo0/b;)Z

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {p1, v2, v0, v2}, Landroidx/compose/ui/node/LayoutNode;->J0(Landroidx/compose/ui/node/LayoutNode;Lo0/b;ILjava/lang/Object;)Z

    move-result p2

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    if-eqz p2, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/node/LayoutNode;->h1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->b0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v4, v5, :cond_3

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/node/LayoutNode;->d1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->b0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object p1

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne p1, v4, :cond_4

    invoke-static {v3, v1, v0, v2}, Landroidx/compose/ui/node/LayoutNode;->b1(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    :cond_4
    :goto_1
    return p2
.end method

.method private final f(Landroidx/compose/ui/node/LayoutNode;Lo0/b;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->V0(Lo0/b;)Z

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {p1, v1, v0, v1}, Landroidx/compose/ui/node/LayoutNode;->W0(Landroidx/compose/ui/node/LayoutNode;Lo0/b;ILjava/lang/Object;)Z

    move-result p2

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->a0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v3, v4, :cond_1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/LayoutNode;->h1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->a0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object p1

    sget-object v3, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/ui/node/LayoutNode;->f1(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    :cond_2
    :goto_1
    return p2
.end method

.method private final g()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/k0;->h:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/compose/ui/node/k0;->h:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/ui/node/k0$a;

    invoke-virtual {v4}, Landroidx/compose/ui/node/k0$a;->a()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroidx/compose/ui/node/k0$a;->c()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroidx/compose/ui/node/k0$a;->a()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    invoke-virtual {v4}, Landroidx/compose/ui/node/k0$a;->b()Z

    move-result v7

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/node/LayoutNode;->h1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroidx/compose/ui/node/k0$a;->a()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v12

    invoke-virtual {v4}, Landroidx/compose/ui/node/k0$a;->b()Z

    move-result v13

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/ui/node/LayoutNode;->d1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    :cond_2
    :goto_0
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_0

    :cond_3
    iget-object v1, v0, Landroidx/compose/ui/node/k0;->h:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->h()V

    :cond_4
    return-void
.end method

.method private final h(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    aget-object v2, p1, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->G0()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroidx/compose/ui/node/j;->e(Landroidx/compose/ui/node/LayoutNode;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->K0()V

    :cond_1
    invoke-direct {p0, v2}, Landroidx/compose/ui/node/k0;->h(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_3
    return-void
.end method

.method private final j(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 7

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    aget-object v4, v0, v3

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    if-nez p2, :cond_1

    invoke-direct {p0, v4}, Landroidx/compose/ui/node/k0;->o(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    if-eqz p2, :cond_5

    invoke-direct {p0, v4}, Landroidx/compose/ui/node/k0;->p(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    invoke-static {v4}, Landroidx/compose/ui/node/g0;->a(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez p2, :cond_4

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v5, v4, v6}, Landroidx/compose/ui/node/j;->e(Landroidx/compose/ui/node/LayoutNode;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v4, v6, v2}, Landroidx/compose/ui/node/k0;->y(Landroidx/compose/ui/node/LayoutNode;ZZ)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4, v6}, Landroidx/compose/ui/node/k0;->i(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_4
    :goto_0
    invoke-direct {p0, v4, p2}, Landroidx/compose/ui/node/k0;->w(Landroidx/compose/ui/node/LayoutNode;Z)V

    invoke-direct {p0, v4, p2}, Landroidx/compose/ui/node/k0;->u(Landroidx/compose/ui/node/LayoutNode;Z)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0, v4, p2}, Landroidx/compose/ui/node/k0;->j(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_0

    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/k0;->w(Landroidx/compose/ui/node/LayoutNode;Z)V

    return-void
.end method

.method private final k(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/k0;->o(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final l(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/k0;->p(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final o(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->a0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r()Landroidx/compose/ui/node/a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/AlignmentLines;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final p(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->b0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->C()Landroidx/compose/ui/node/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/AlignmentLines;->k()Z

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private final u(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result p1

    :goto_0
    return p1
.end method

.method private final w(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/k0;->u(Landroidx/compose/ui/node/LayoutNode;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/j;->e(Landroidx/compose/ui/node/LayoutNode;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/ui/node/k0;->y(Landroidx/compose/ui/node/LayoutNode;ZZ)Z

    :cond_0
    return-void
.end method

.method private final y(Landroidx/compose/ui/node/LayoutNode;ZZ)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->F0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/k0;->k(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->G0()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/k0;->l(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->z()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->i:Lo0/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/node/k0;->e(Landroidx/compose/ui/node/LayoutNode;Lo0/b;)Z

    move-result v1

    :cond_3
    if-eqz p3, :cond_a

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->S()Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->G0()Ljava/lang/Boolean;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->K0()V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/node/k0;->f(Landroidx/compose/ui/node/LayoutNode;Lo0/b;)Z

    move-result p2

    goto :goto_1

    :cond_6
    move p2, v1

    :goto_1
    if-eqz p3, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Q()Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    if-eq p1, p3, :cond_7

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->F0()Z

    move-result p3

    if-eqz p3, :cond_9

    :cond_7
    iget-object p3, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    if-ne p1, p3, :cond_8

    invoke-virtual {p1, v1, v1}, Landroidx/compose/ui/node/LayoutNode;->T0(II)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Z0()V

    :goto_2
    iget-object p3, p0, Landroidx/compose/ui/node/k0;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    invoke-virtual {p3, p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;->d(Landroidx/compose/ui/node/LayoutNode;)V

    iget-object p1, p0, Landroidx/compose/ui/node/k0;->j:Landroidx/compose/ui/node/h0;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/node/h0;->a()V

    :cond_9
    move v1, p2

    :cond_a
    :goto_3
    invoke-direct {p0}, Landroidx/compose/ui/node/k0;->g()V

    :cond_b
    return v1
.end method

.method static synthetic z(Landroidx/compose/ui/node/k0;Landroidx/compose/ui/node/LayoutNode;ZZILjava/lang/Object;)Z
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/k0;->y(Landroidx/compose/ui/node/LayoutNode;ZZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final C(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/k0$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->S()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-nez p2, :cond_3

    iget-object p1, p0, Landroidx/compose/ui/node/k0;->j:Landroidx/compose/ui/node/h0;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroidx/compose/ui/node/h0;->a()V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->M0()V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->L0()V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->G0()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->S()Z

    move-result v0

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {p2, p1, v2}, Landroidx/compose/ui/node/j;->c(Landroidx/compose/ui/node/LayoutNode;Z)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->Q()Z

    move-result v0

    if-ne v0, v2, :cond_8

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result p2

    if-ne p2, v2, :cond_9

    goto :goto_2

    :cond_9
    iget-object p2, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {p2, p1, v1}, Landroidx/compose/ui/node/j;->c(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_a
    :goto_2
    iget-boolean p1, p0, Landroidx/compose/ui/node/k0;->d:Z

    if-nez p1, :cond_c

    move v1, v2

    goto :goto_3

    :cond_b
    iget-object p1, p0, Landroidx/compose/ui/node/k0;->j:Landroidx/compose/ui/node/h0;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroidx/compose/ui/node/h0;->a()V

    :cond_c
    :goto_3
    return v1
.end method

.method public final D(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/node/k0$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b

    const/4 v3, 0x4

    if-eq v0, v3, :cond_b

    const/4 v3, 0x5

    if-ne v0, v3, :cond_a

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->N0()V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->O0()V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->G0()Ljava/lang/Boolean;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/k0;->l(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result p2

    if-ne p2, v2, :cond_8

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/k0;->k(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result p2

    if-ne p2, v2, :cond_7

    goto :goto_1

    :cond_7
    iget-object p2, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {p2, p1, v1}, Landroidx/compose/ui/node/j;->c(Landroidx/compose/ui/node/LayoutNode;Z)V

    goto :goto_1

    :cond_8
    iget-object p2, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {p2, p1, v2}, Landroidx/compose/ui/node/j;->c(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_9
    :goto_1
    iget-boolean p1, p0, Landroidx/compose/ui/node/k0;->d:Z

    if-nez p1, :cond_c

    move v1, v2

    goto :goto_2

    :cond_a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_b
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->h:Landroidx/compose/runtime/collection/b;

    new-instance v3, Landroidx/compose/ui/node/k0$a;

    invoke-direct {v3, p1, v2, p2}, Landroidx/compose/ui/node/k0$a;-><init>(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/compose/ui/node/k0;->j:Landroidx/compose/ui/node/h0;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroidx/compose/ui/node/h0;->a()V

    :cond_c
    :goto_2
    return v1
.end method

.method public final E(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;->d(Landroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public final F(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/k0$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->F0()Z

    move-result v0

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Q()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/k0;->j:Landroidx/compose/ui/node/h0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/h0;->a()V

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->L0()V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->F0()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->Q()Z

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result p2

    if-ne p2, v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p2, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {p2, p1, v2}, Landroidx/compose/ui/node/j;->c(Landroidx/compose/ui/node/LayoutNode;Z)V

    :goto_1
    iget-boolean p1, p0, Landroidx/compose/ui/node/k0;->d:Z

    if-nez p1, :cond_1

    goto :goto_2

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_7
    iget-object p1, p0, Landroidx/compose/ui/node/k0;->j:Landroidx/compose/ui/node/h0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/h0;->a()V

    goto :goto_0

    :goto_2
    return v1
.end method

.method public final G(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/k0$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->O0()V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/k0;->k(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result p2

    if-ne p2, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {p2, p1, v2}, Landroidx/compose/ui/node/j;->c(Landroidx/compose/ui/node/LayoutNode;Z)V

    :goto_1
    iget-boolean p1, p0, Landroidx/compose/ui/node/k0;->d:Z

    if-nez p1, :cond_0

    goto :goto_2

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_6
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->h:Landroidx/compose/runtime/collection/b;

    new-instance v1, Landroidx/compose/ui/node/k0$a;

    invoke-direct {v1, p1, v2, p2}, Landroidx/compose/ui/node/k0$a;-><init>(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/compose/ui/node/k0;->j:Landroidx/compose/ui/node/h0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/h0;->a()V

    goto :goto_0

    :goto_2
    return v1
.end method

.method public final I(J)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->i:Lo0/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo0/b;->r()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lo0/b;->f(JJ)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/compose/ui/node/k0;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "updateRootConstraints called while measuring"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p2}, Lo0/b;->a(J)Lo0/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/k0;->i:Lo0/b;

    iget-object p1, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->N0()V

    :cond_2
    iget-object p1, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->O0()V

    iget-object p1, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    iget-object p2, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p1, p2, v1}, Landroidx/compose/ui/node/j;->c(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_4
    return-void
.end method

.method public final c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/node/k0;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/OnPositionedDispatcher;->e(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/k0;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    invoke-virtual {p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;->a()V

    return-void
.end method

.method public final i(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v0, p2}, Landroidx/compose/ui/node/j;->g(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/k0;->c:Z

    if-nez v0, :cond_1

    const-string v0, "forceMeasureTheSubtree should be executed during the measureAndLayout pass"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/k0;->u(Landroidx/compose/ui/node/LayoutNode;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "node not yet measured"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/k0;->j(Landroidx/compose/ui/node/LayoutNode;Z)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v0}, Landroidx/compose/ui/node/j;->h()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    invoke-virtual {v0}, Landroidx/compose/ui/node/OnPositionedDispatcher;->c()Z

    move-result v0

    return v0
.end method

.method public final q()J
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/node/k0;->c:Z

    if-nez v0, :cond_0

    const-string v0, "measureIteration should be only used during the measure/layout pass"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/node/k0;->g:J

    return-wide v0
.end method

.method public final r(Lkotlin/jvm/functions/Function0;)Z
    .locals 11

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "performMeasureAndLayout called with unattached root"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "performMeasureAndLayout called with unplaced root"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Landroidx/compose/ui/node/k0;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "performMeasureAndLayout called during measure layout"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->i:Lo0/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/k0;->c:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/k0;->d:Z

    :try_start_0
    iget-object v2, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v2}, Landroidx/compose/ui/node/j;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    move v3, v1

    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroidx/compose/ui/node/j;->h()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2}, Landroidx/compose/ui/node/j;->a(Landroidx/compose/ui/node/j;)Landroidx/compose/ui/node/DepthSortedSet;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/DepthSortedSet;->d()Z

    move-result v4

    xor-int/lit8 v7, v4, 0x1

    if-nez v4, :cond_4

    invoke-static {v2}, Landroidx/compose/ui/node/j;->a(Landroidx/compose/ui/node/j;)Landroidx/compose/ui/node/DepthSortedSet;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Landroidx/compose/ui/node/DepthSortedSet;->e()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_4
    invoke-static {v2}, Landroidx/compose/ui/node/j;->b(Landroidx/compose/ui/node/j;)Landroidx/compose/ui/node/DepthSortedSet;

    move-result-object v4

    goto :goto_1

    :goto_2
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, v4

    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/node/k0;->z(Landroidx/compose/ui/node/k0;Landroidx/compose/ui/node/LayoutNode;ZZILjava/lang/Object;)Z

    move-result v5

    invoke-static {p0}, Landroidx/compose/ui/node/k0;->a(Landroidx/compose/ui/node/k0;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    if-ne v4, v6, :cond_3

    if-eqz v5, :cond_3

    move v3, v0

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_7

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_6
    move v3, v1

    :cond_7
    :goto_3
    iput-boolean v1, p0, Landroidx/compose/ui/node/k0;->c:Z

    iput-boolean v1, p0, Landroidx/compose/ui/node/k0;->d:Z

    iget-object p1, p0, Landroidx/compose/ui/node/k0;->j:Landroidx/compose/ui/node/h0;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/node/h0;->a()V

    :cond_8
    move v1, v3

    goto :goto_5

    :goto_4
    iput-boolean v1, p0, Landroidx/compose/ui/node/k0;->c:Z

    iput-boolean v1, p0, Landroidx/compose/ui/node/k0;->d:Z

    throw p1

    :cond_9
    :goto_5
    invoke-direct {p0}, Landroidx/compose/ui/node/k0;->b()V

    return v1
.end method

.method public final s(Landroidx/compose/ui/node/LayoutNode;J)V
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "measureAndLayout called on root"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "performMeasureAndLayout called with unattached root"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "performMeasureAndLayout called with unplaced root"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Landroidx/compose/ui/node/k0;->c:Z

    if-eqz v0, :cond_4

    const-string v0, "performMeasureAndLayout called during measure layout"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->i:Lo0/b;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/k0;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/k0;->d:Z

    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/j;->i(Landroidx/compose/ui/node/LayoutNode;)Z

    invoke-static {p2, p3}, Lo0/b;->a(J)Lo0/b;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/node/k0;->e(Landroidx/compose/ui/node/LayoutNode;Lo0/b;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->S()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->G0()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->K0()V

    :cond_6
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/k0;->h(Landroidx/compose/ui/node/LayoutNode;)V

    invoke-static {p2, p3}, Lo0/b;->a(J)Lo0/b;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/k0;->f(Landroidx/compose/ui/node/LayoutNode;Lo0/b;)Z

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Q()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Z0()V

    iget-object p2, p0, Landroidx/compose/ui/node/k0;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;->d(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_7
    invoke-direct {p0}, Landroidx/compose/ui/node/k0;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/ui/node/k0;->c:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/k0;->d:Z

    iget-object p1, p0, Landroidx/compose/ui/node/k0;->j:Landroidx/compose/ui/node/h0;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/node/h0;->a()V

    goto :goto_2

    :goto_1
    iput-boolean v0, p0, Landroidx/compose/ui/node/k0;->c:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/k0;->d:Z

    throw p1

    :cond_8
    :goto_2
    invoke-direct {p0}, Landroidx/compose/ui/node/k0;->b()V

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v0}, Landroidx/compose/ui/node/j;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "performMeasureAndLayout called with unattached root"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "performMeasureAndLayout called with unplaced root"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Landroidx/compose/ui/node/k0;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "performMeasureAndLayout called during measure layout"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->i:Lo0/b;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/k0;->c:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/ui/node/k0;->d:Z

    :try_start_0
    iget-object v2, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v2, v0}, Landroidx/compose/ui/node/j;->g(Z)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p0, v2, v0}, Landroidx/compose/ui/node/k0;->B(Landroidx/compose/ui/node/LayoutNode;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/k0;->A(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/k0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/node/k0;->B(Landroidx/compose/ui/node/LayoutNode;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroidx/compose/ui/node/k0;->c:Z

    iput-boolean v1, p0, Landroidx/compose/ui/node/k0;->d:Z

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->j:Landroidx/compose/ui/node/h0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/compose/ui/node/h0;->a()V

    goto :goto_2

    :goto_1
    iput-boolean v1, p0, Landroidx/compose/ui/node/k0;->c:Z

    iput-boolean v1, p0, Landroidx/compose/ui/node/k0;->d:Z

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method public final v(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->b:Landroidx/compose/ui/node/j;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/j;->i(Landroidx/compose/ui/node/LayoutNode;)Z

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;->f(Landroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public final x(Landroidx/compose/ui/node/y0$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/k0;->f:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    return-void
.end method

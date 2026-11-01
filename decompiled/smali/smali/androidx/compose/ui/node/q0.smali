.class public final Landroidx/compose/ui/node/q0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/q0$a;,
        Landroidx/compose/ui/node/q0$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/ui/node/LayoutNode;

.field private final b:Landroidx/compose/ui/node/s;

.field private c:Landroidx/compose/ui/node/NodeCoordinator;

.field private final d:Landroidx/compose/ui/f$c;

.field private e:Landroidx/compose/ui/f$c;

.field private f:Landroidx/compose/runtime/collection/b;

.field private g:Landroidx/compose/runtime/collection/b;

.field private h:Landroidx/compose/ui/node/q0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    new-instance v0, Landroidx/compose/ui/node/s;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/s;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v0, p0, Landroidx/compose/ui/node/q0;->b:Landroidx/compose/ui/node/s;

    iput-object v0, p0, Landroidx/compose/ui/node/q0;->c:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/s;->Q2()Landroidx/compose/ui/node/l1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    iput-object p1, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    return-void
.end method

.method private final A(ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/q0;->j(Landroidx/compose/ui/f$c;ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Z)Landroidx/compose/ui/node/q0$a;

    move-result-object p4

    invoke-virtual {p2}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p3}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p3

    sub-int/2addr p3, p1

    invoke-static {p2, p3, p4}, Landroidx/compose/ui/node/o0;->e(IILandroidx/compose/ui/node/k;)V

    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->B()V

    return-void
.end method

.method private final B()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->t1(I)V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final D(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 5

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "trimChain called on already trimmed chain"

    invoke-static {p1}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/f$c;->z1(Landroidx/compose/ui/f$c;)V

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/compose/ui/f$c;->v1(Landroidx/compose/ui/f$c;)V

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroidx/compose/ui/f$c;->t1(I)V

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object v0

    if-eq p1, v0, :cond_3

    move v1, v2

    :cond_3
    if-nez v1, :cond_4

    const-string v0, "trimChain did not update the head"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method private final F(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)V
    .locals 1

    instance-of p1, p1, Landroidx/compose/ui/node/l0;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    instance-of p1, p2, Landroidx/compose/ui/node/l0;

    if-eqz p1, :cond_1

    check-cast p2, Landroidx/compose/ui/node/l0;

    invoke-static {p2, p3}, Landroidx/compose/ui/node/NodeChainKt;->c(Landroidx/compose/ui/node/l0;Landroidx/compose/ui/f$c;)V

    invoke-virtual {p3}, Landroidx/compose/ui/f$c;->k1()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Landroidx/compose/ui/node/t0;->e(Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Landroidx/compose/ui/f$c;->A1(Z)V

    goto :goto_0

    :cond_1
    instance-of p1, p3, Landroidx/compose/ui/node/BackwardsCompatNode;

    if-eqz p1, :cond_3

    move-object p1, p3

    check-cast p1, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/BackwardsCompatNode;->H1(Landroidx/compose/ui/f$b;)V

    invoke-virtual {p3}, Landroidx/compose/ui/f$c;->k1()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroidx/compose/ui/node/t0;->e(Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v0}, Landroidx/compose/ui/f$c;->A1(Z)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown Modifier.Node type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/q0;->g(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/q0;->h(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/node/q0;)I
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->i()I

    move-result p0

    return p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/node/q0;)Landroidx/compose/ui/node/q0$b;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/q0;->v(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator;)V

    return-void
.end method

.method public static final synthetic f(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/q0;->F(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)V

    return-void
.end method

.method private final g(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 1

    instance-of v0, p1, Landroidx/compose/ui/node/l0;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/ui/node/l0;

    invoke-virtual {p1}, Landroidx/compose/ui/node/l0;->a()Landroidx/compose/ui/f$c;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/node/t0;->h(Landroidx/compose/ui/f$c;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/f$c;->x1(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;-><init>(Landroidx/compose/ui/f$b;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "A ModifierNodeElement cannot return an already attached node from create() "

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/compose/ui/f$c;->w1(Z)V

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/q0;->r(Landroidx/compose/ui/f$c;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    move-result-object p1

    return-object p1
.end method

.method private final h(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/node/t0;->d(Landroidx/compose/ui/f$c;)V

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->s1()V

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->m1()V

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/q0;->w(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    move-result-object p1

    return-object p1
.end method

.method private final i()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v0

    return v0
.end method

.method private final j(Landroidx/compose/ui/f$c;ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Z)Landroidx/compose/ui/node/q0$a;
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/node/q0;->h:Landroidx/compose/ui/node/q0$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/q0$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/node/q0$a;-><init>(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$c;ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Z)V

    iput-object v0, p0, Landroidx/compose/ui/node/q0;->h:Landroidx/compose/ui/node/q0$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/q0$a;->g(Landroidx/compose/ui/f$c;)V

    invoke-virtual {v0, p2}, Landroidx/compose/ui/node/q0$a;->h(I)V

    invoke-virtual {v0, p3}, Landroidx/compose/ui/node/q0$a;->f(Landroidx/compose/runtime/collection/b;)V

    invoke-virtual {v0, p4}, Landroidx/compose/ui/node/q0$a;->d(Landroidx/compose/runtime/collection/b;)V

    invoke-virtual {v0, p5}, Landroidx/compose/ui/node/q0$a;->i(Z)V

    :goto_0
    return-object v0
.end method

.method private final r(Landroidx/compose/ui/f$c;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 1

    invoke-virtual {p2}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/f$c;->z1(Landroidx/compose/ui/f$c;)V

    invoke-virtual {p1, v0}, Landroidx/compose/ui/f$c;->v1(Landroidx/compose/ui/f$c;)V

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/compose/ui/f$c;->v1(Landroidx/compose/ui/f$c;)V

    invoke-virtual {p1, p2}, Landroidx/compose/ui/f$c;->z1(Landroidx/compose/ui/f$c;)V

    return-object p1
.end method

.method private final u()Landroidx/compose/ui/f$c;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "padChain called on already padded chain"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->z1(Landroidx/compose/ui/f$c;)V

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/ui/f$c;->v1(Landroidx/compose/ui/f$c;)V

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object v0

    return-object v0
.end method

.method private final v(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->b()Landroidx/compose/ui/node/NodeChainKt$a;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/NodeCoordinator;->E2(Landroidx/compose/ui/node/NodeCoordinator;)V

    iput-object p2, p0, Landroidx/compose/ui/node/q0;->c:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p2}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private final w(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->z1(Landroidx/compose/ui/f$c;)V

    invoke-virtual {p1, v2}, Landroidx/compose/ui/f$c;->v1(Landroidx/compose/ui/f$c;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/compose/ui/f$c;->v1(Landroidx/compose/ui/f$c;)V

    invoke-virtual {p1, v2}, Landroidx/compose/ui/f$c;->z1(Landroidx/compose/ui/f$c;)V

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public final C()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/q0;->b:Landroidx/compose/ui/node/s;

    iget-object v1, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Landroidx/compose/ui/node/g;->d(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/node/x;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/compose/ui/node/y;

    invoke-virtual {v3}, Landroidx/compose/ui/node/y;->R2()Landroidx/compose/ui/node/x;

    move-result-object v4

    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/y;->U2(Landroidx/compose/ui/node/x;)V

    if-eq v4, v1, :cond_1

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->o2()V

    goto :goto_1

    :cond_0
    new-instance v3, Landroidx/compose/ui/node/y;

    iget-object v4, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v3, v4, v2}, Landroidx/compose/ui/node/y;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/x;)V

    invoke-virtual {v1, v3}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroidx/compose/ui/node/NodeCoordinator;->E2(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/NodeCoordinator;->D2(Landroidx/compose/ui/node/NodeCoordinator;)V

    move-object v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v0}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->E2(Landroidx/compose/ui/node/NodeCoordinator;)V

    iput-object v0, p0, Landroidx/compose/ui/node/q0;->c:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method

.method public final E(Landroidx/compose/ui/f;)V
    .locals 12

    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->u()Landroidx/compose/ui/f$c;

    move-result-object v6

    iget-object v7, p0, Landroidx/compose/ui/node/q0;->f:Landroidx/compose/runtime/collection/b;

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/node/q0;->g:Landroidx/compose/runtime/collection/b;

    const/16 v3, 0x10

    if-nez v2, :cond_1

    new-instance v2, Landroidx/compose/runtime/collection/b;

    new-array v4, v3, [Landroidx/compose/ui/f$b;

    invoke-direct {v2, v4, v0}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_1
    invoke-static {p1, v2}, Landroidx/compose/ui/node/NodeChainKt;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/collection/b;)Landroidx/compose/runtime/collection/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v2

    const/4 v8, 0x0

    const-string v4, "expected prior modifier list to be non-empty"

    const/4 v9, 0x1

    if-ne v2, v1, :cond_8

    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    :goto_1
    if-eqz v3, :cond_4

    if-ge v2, v1, :cond_4

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v2

    check-cast v5, Landroidx/compose/ui/f$b;

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v10

    aget-object v10, v10, v2

    check-cast v10, Landroidx/compose/ui/f$b;

    invoke-static {v5, v10}, Landroidx/compose/ui/node/NodeChainKt;->d(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;)I

    move-result v11

    if-eqz v11, :cond_3

    if-eq v11, v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0, v5, v10, v3}, Landroidx/compose/ui/node/q0;->F(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)V

    :goto_2
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v3

    :cond_4
    move-object v5, v3

    goto :goto_3

    :cond_5
    invoke-static {v4}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :goto_3
    if-ge v2, v1, :cond_10

    if-eqz v7, :cond_7

    if-eqz v5, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->A()Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    move-object v0, p0

    move v1, v2

    move-object v2, v7

    move-object v3, p1

    move-object v4, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/q0;->A(ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;Z)V

    :goto_4
    move v0, v9

    goto/16 :goto_8

    :cond_6
    const-string p1, "structuralUpdate requires a non-null tail"

    invoke-static {p1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_7
    invoke-static {v4}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_8
    iget-object v2, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->A()Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v1, :cond_a

    move-object v1, v6

    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v2

    if-ge v0, v2, :cond_9

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Landroidx/compose/ui/f$b;

    invoke-direct {p0, v2, v1}, Landroidx/compose/ui/node/q0;->g(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->B()V

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    if-nez v1, :cond_e

    if-eqz v7, :cond_d

    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v1

    move v2, v0

    :goto_6
    if-eqz v1, :cond_b

    invoke-virtual {v7}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v3

    if-ge v2, v3, :cond_b

    invoke-direct {p0, v1}, Landroidx/compose/ui/node/q0;->h(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, p0, Landroidx/compose/ui/node/q0;->b:Landroidx/compose/ui/node/s;

    iget-object v2, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    goto :goto_7

    :cond_c
    move-object v2, v8

    :goto_7
    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->E2(Landroidx/compose/ui/node/NodeCoordinator;)V

    iget-object v1, p0, Landroidx/compose/ui/node/q0;->b:Landroidx/compose/ui/node/s;

    iput-object v1, p0, Landroidx/compose/ui/node/q0;->c:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_8

    :cond_d
    invoke-static {v4}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_e
    if-nez v7, :cond_f

    new-instance v7, Landroidx/compose/runtime/collection/b;

    new-array v1, v3, [Landroidx/compose/ui/f$b;

    invoke-direct {v7, v1, v0}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_f
    iget-object v0, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->A()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/q0;->A(ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;Z)V

    goto/16 :goto_4

    :cond_10
    :goto_8
    iput-object p1, p0, Landroidx/compose/ui/node/q0;->f:Landroidx/compose/runtime/collection/b;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroidx/compose/runtime/collection/b;->h()V

    move-object v8, v7

    :cond_11
    iput-object v8, p0, Landroidx/compose/ui/node/q0;->g:Landroidx/compose/runtime/collection/b;

    invoke-direct {p0, v6}, Landroidx/compose/ui/node/q0;->D(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->C()V

    :cond_12
    return-void
.end method

.method public final k()Landroidx/compose/ui/f$c;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    return-object v0
.end method

.method public final l()Landroidx/compose/ui/node/s;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/q0;->b:Landroidx/compose/ui/node/s;

    return-object v0
.end method

.method public final m()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/q0;->a:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public final n()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/q0;->c:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final o()Landroidx/compose/ui/f$c;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    return-object v0
.end method

.method public final p(I)Z
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->i()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q(I)Z
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/node/q0;->i()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final s()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->l1()V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->m1()V

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/node/q0;->e:Landroidx/compose/ui/f$c;

    iget-object v2, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    const-string v3, "]"

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v2

    iget-object v4, p0, Landroidx/compose/ui/node/q0;->d:Landroidx/compose/ui/f$c;

    if-ne v2, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final x()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->q1()V

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->z()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->t()V

    return-void
.end method

.method public final y()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->r1()V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->e1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/node/t0;->a(Landroidx/compose/ui/f$c;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->j1()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroidx/compose/ui/node/t0;->e(Landroidx/compose/ui/f$c;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->w1(Z)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->A1(Z)V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final z()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->s1()V

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

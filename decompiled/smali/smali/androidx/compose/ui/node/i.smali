.class public abstract Landroidx/compose/ui/node/i;
.super Landroidx/compose/ui/f$c;


# instance fields
.field private final n:I

.field private o:Landroidx/compose/ui/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    invoke-static {p0}, Landroidx/compose/ui/node/t0;->g(Landroidx/compose/ui/f$c;)I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/node/i;->n:I

    return-void
.end method

.method private final H1(IZ)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/f$c;->x1(I)V

    if-eq v0, p1, :cond_4

    invoke-static {p0}, Landroidx/compose/ui/node/g;->f(Landroidx/compose/ui/node/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/f$c;->t1(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    or-int/2addr p1, v2

    invoke-virtual {v1, p1}, Landroidx/compose/ui/f$c;->x1(I)V

    if-eq v1, v0, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-ne v1, v0, :cond_2

    invoke-static {v0}, Landroidx/compose/ui/node/t0;->h(Landroidx/compose/ui/f$c;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/f$c;->x1(I)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/compose/ui/f$c;->a1()I

    move-result p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    or-int/2addr p1, p2

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {v1, p1}, Landroidx/compose/ui/f$c;->t1(I)V

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final I1(ILandroidx/compose/ui/f$c;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    instance-of p1, p0, Landroidx/compose/ui/node/x;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Delegating to multiple LayoutModifierNodes without the delegating node implementing LayoutModifierNode itself is not allowed.\nDelegating Node: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nDelegate Node: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public C1(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;
    .locals 6

    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_3

    instance-of v2, p1, Landroidx/compose/ui/f$c;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/f$c;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v2

    if-ne v0, v2, :cond_2

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot delegate to an already delegated node"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Cannot delegate to an already attached node"

    invoke-static {v2}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/f$c;->u1(Landroidx/compose/ui/f$c;)V

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    invoke-static {v0}, Landroidx/compose/ui/node/t0;->h(Landroidx/compose/ui/f$c;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/compose/ui/f$c;->x1(I)V

    invoke-direct {p0, v3, v0}, Landroidx/compose/ui/node/i;->I1(ILandroidx/compose/ui/f$c;)V

    iget-object v4, p0, Landroidx/compose/ui/node/i;->o:Landroidx/compose/ui/f$c;

    invoke-virtual {v0, v4}, Landroidx/compose/ui/f$c;->v1(Landroidx/compose/ui/f$c;)V

    iput-object v0, p0, Landroidx/compose/ui/node/i;->o:Landroidx/compose/ui/f$c;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/f$c;->z1(Landroidx/compose/ui/f$c;)V

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v4

    or-int/2addr v4, v3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroidx/compose/ui/node/i;->H1(IZ)V

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v5

    and-int/2addr v3, v5

    if-eqz v3, :cond_6

    invoke-static {v4}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {v2}, Landroidx/compose/ui/node/q0;->C()V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    :goto_2
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->l1()V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->r1()V

    invoke-static {v0}, Landroidx/compose/ui/node/t0;->a(Landroidx/compose/ui/f$c;)V

    :cond_7
    return-object p1
.end method

.method public final E1()Landroidx/compose/ui/f$c;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/i;->o:Landroidx/compose/ui/f$c;

    return-object v0
.end method

.method public final F1()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/i;->n:I

    return v0
.end method

.method protected final G1(Landroidx/compose/ui/node/f;)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/i;->o:Landroidx/compose/ui/f$c;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_5

    if-ne v0, p1, :cond_4

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/node/t0;->d(Landroidx/compose/ui/f$c;)V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->s1()V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->m1()V

    :cond_0
    invoke-virtual {v0, v0}, Landroidx/compose/ui/f$c;->u1(Landroidx/compose/ui/f$c;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/f$c;->t1(I)V

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/i;->o:Landroidx/compose/ui/f$c;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/compose/ui/f$c;->v1(Landroidx/compose/ui/f$c;)V

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->v1(Landroidx/compose/ui/f$c;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->z1(Landroidx/compose/ui/f$c;)V

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result p1

    invoke-static {p0}, Landroidx/compose/ui/node/t0;->h(Landroidx/compose/ui/f$c;)I

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroidx/compose/ui/node/i;->H1(IZ)V

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    and-int/2addr p1, v3

    if-eqz p1, :cond_3

    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {p1}, Landroidx/compose/ui/node/q0;->C()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find delegate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l1()V
    .locals 2

    invoke-super {p0}, Landroidx/compose/ui/f$c;->l1()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->l1()V

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public m1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->m1()V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/compose/ui/f$c;->m1()V

    return-void
.end method

.method public q1()V
    .locals 1

    invoke-super {p0}, Landroidx/compose/ui/f$c;->q1()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->q1()V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->r1()V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/compose/ui/f$c;->r1()V

    return-void
.end method

.method public s1()V
    .locals 1

    invoke-super {p0}, Landroidx/compose/ui/f$c;->s1()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->s1()V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u1(Landroidx/compose/ui/f$c;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/compose/ui/f$c;->u1(Landroidx/compose/ui/f$c;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/f$c;->u1(Landroidx/compose/ui/f$c;)V

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.class public final Landroidx/compose/ui/layout/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/l;


# instance fields
.field private final a:Landroidx/compose/ui/node/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/q;->a:Landroidx/compose/ui/node/j0;

    return-void
.end method

.method private final b()J
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/layout/q;->a:Landroidx/compose/ui/node/j0;

    invoke-static {v0}, Landroidx/compose/ui/layout/r;->a(Landroidx/compose/ui/node/j0;)Landroidx/compose/ui/node/j0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->X0()Landroidx/compose/ui/layout/l;

    move-result-object v1

    sget-object v2, Ly/g;->b:Ly/g$a;

    invoke-virtual {v2}, Ly/g$a;->c()J

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4}, Landroidx/compose/ui/layout/q;->C(Landroidx/compose/ui/layout/l;J)J

    move-result-wide v3

    invoke-virtual {p0}, Landroidx/compose/ui/layout/q;->a()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->v1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v2}, Ly/g$a;->c()J

    move-result-wide v5

    invoke-virtual {v1, v0, v5, v6}, Landroidx/compose/ui/node/NodeCoordinator;->C(Landroidx/compose/ui/layout/l;J)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ly/g;->q(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public B(Landroidx/compose/ui/layout/l;JZ)J
    .locals 5

    instance-of v0, p1, Landroidx/compose/ui/layout/q;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/ui/layout/q;

    iget-object p1, p1, Landroidx/compose/ui/layout/q;->a:Landroidx/compose/ui/node/j0;

    invoke-virtual {p1}, Landroidx/compose/ui/node/j0;->v1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->n2()V

    invoke-virtual {p0}, Landroidx/compose/ui/layout/q;->a()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/node/j0;->v1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->L1(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    if-eqz v0, :cond_0

    xor-int/lit8 v1, p4, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/node/j0;->A1(Landroidx/compose/ui/node/j0;Z)J

    move-result-wide v1

    invoke-static {p2, p3}, Lo0/q;->d(J)J

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Lo0/p;->l(JJ)J

    move-result-wide p1

    iget-object p3, p0, Landroidx/compose/ui/layout/q;->a:Landroidx/compose/ui/node/j0;

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p3, v0, p4}, Landroidx/compose/ui/node/j0;->A1(Landroidx/compose/ui/node/j0;Z)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Lo0/p;->k(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lo0/p;->h(J)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p1, p2}, Lo0/p;->i(J)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p3, p1}, Ly/h;->a(FF)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/layout/r;->a(Landroidx/compose/ui/node/j0;)Landroidx/compose/ui/node/j0;

    move-result-object v0

    xor-int/lit8 v1, p4, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/node/j0;->A1(Landroidx/compose/ui/node/j0;Z)J

    move-result-wide v1

    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->e1()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lo0/p;->l(JJ)J

    move-result-wide v1

    invoke-static {p2, p3}, Lo0/q;->d(J)J

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Lo0/p;->l(JJ)J

    move-result-wide p1

    iget-object p3, p0, Landroidx/compose/ui/layout/q;->a:Landroidx/compose/ui/node/j0;

    invoke-static {p3}, Landroidx/compose/ui/layout/r;->a(Landroidx/compose/ui/node/j0;)Landroidx/compose/ui/node/j0;

    move-result-object p3

    iget-object v1, p0, Landroidx/compose/ui/layout/q;->a:Landroidx/compose/ui/node/j0;

    xor-int/lit8 v2, p4, 0x1

    invoke-virtual {v1, p3, v2}, Landroidx/compose/ui/node/j0;->A1(Landroidx/compose/ui/node/j0;Z)J

    move-result-wide v1

    invoke-virtual {p3}, Landroidx/compose/ui/node/j0;->e1()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lo0/p;->l(JJ)J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Lo0/p;->k(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lo0/p;->h(J)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, p2}, Lo0/p;->i(J)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v1, p1}, Ly/h;->a(FF)J

    move-result-wide p1

    invoke-virtual {p3}, Landroidx/compose/ui/node/j0;->v1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/ui/node/NodeCoordinator;->a2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->v1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->a2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p3, v0, p1, p2, p4}, Landroidx/compose/ui/node/NodeCoordinator;->B(Landroidx/compose/ui/layout/l;JZ)J

    move-result-wide p1

    :goto_0
    return-wide p1

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/layout/q;->a:Landroidx/compose/ui/node/j0;

    invoke-static {v0}, Landroidx/compose/ui/layout/r;->a(Landroidx/compose/ui/node/j0;)Landroidx/compose/ui/node/j0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->w1()Landroidx/compose/ui/layout/q;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, p4}, Landroidx/compose/ui/layout/q;->B(Landroidx/compose/ui/layout/l;JZ)J

    move-result-wide p2

    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->v1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->X0()Landroidx/compose/ui/layout/l;

    move-result-object v0

    sget-object v1, Ly/g;->b:Ly/g$a;

    invoke-virtual {v1}, Ly/g$a;->c()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2, p4}, Landroidx/compose/ui/layout/l;->B(Landroidx/compose/ui/layout/l;JZ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ly/g;->r(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(Landroidx/compose/ui/layout/l;J)J
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/ui/layout/q;->B(Landroidx/compose/ui/layout/l;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public F()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/q;->a()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->F()Z

    move-result v0

    return v0
.end method

.method public L(J)J
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/layout/q;->a()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-direct {p0}, Landroidx/compose/ui/layout/q;->b()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Ly/g;->r(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->L(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public O(Landroidx/compose/ui/layout/l;Z)Ly/i;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/q;->a()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->O(Landroidx/compose/ui/layout/l;Z)Ly/i;

    move-result-object p1

    return-object p1
.end method

.method public R()Landroidx/compose/ui/layout/l;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/layout/q;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/q;->a()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->a2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->X0()Landroidx/compose/ui/layout/l;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public Y(J)J
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/layout/q;->a()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-direct {p0}, Landroidx/compose/ui/layout/q;->b()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Ly/g;->r(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->Y(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/q;->a:Landroidx/compose/ui/node/j0;

    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->v1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    return-object v0
.end method

.method public k()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/q;->a:Landroidx/compose/ui/node/j0;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v0

    invoke-static {v1, v0}, Lo0/u;->a(II)J

    move-result-wide v0

    return-wide v0
.end method

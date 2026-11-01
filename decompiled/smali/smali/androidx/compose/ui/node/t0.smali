.class public abstract Landroidx/compose/ui/node/t0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/collection/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroidx/collection/q0;->b()Landroidx/collection/k0;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/node/t0;->a:Landroidx/collection/k0;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/f$c;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autoInvalidateInsertedNode called on unattached node"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/t0;->b(Landroidx/compose/ui/f$c;II)V

    return-void
.end method

.method public static final b(Landroidx/compose/ui/f$c;II)V
    .locals 2

    instance-of v0, p0, Landroidx/compose/ui/node/i;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/i;

    invoke-virtual {v0}, Landroidx/compose/ui/node/i;->F1()I

    move-result v1

    and-int/2addr v1, p1

    invoke-static {p0, v1, p2}, Landroidx/compose/ui/node/t0;->c(Landroidx/compose/ui/f$c;II)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/i;->F1()I

    move-result p0

    not-int p0, p0

    and-int/2addr p0, p1

    invoke-virtual {v0}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1, p0, p2}, Landroidx/compose/ui/node/t0;->b(Landroidx/compose/ui/f$c;II)V

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v0

    and-int/2addr p1, v0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/t0;->c(Landroidx/compose/ui/f$c;II)V

    :cond_1
    return-void
.end method

.method private static final c(Landroidx/compose/ui/f$c;II)V
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->i1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    instance-of v1, p0, Landroidx/compose/ui/node/x;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/x;

    invoke-static {v1}, Landroidx/compose/ui/node/a0;->b(Landroidx/compose/ui/node/x;)V

    if-ne p2, v0, :cond_1

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->t2()V

    :cond_1
    const/16 v1, 0x80

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    instance-of v1, p0, Landroidx/compose/ui/node/w;

    if-eqz v1, :cond_2

    if-eq p2, v0, :cond_2

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    :cond_2
    const/16 v1, 0x100

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    instance-of v1, p0, Landroidx/compose/ui/node/p;

    if-eqz v1, :cond_3

    if-eq p2, v0, :cond_3

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->z0()V

    :cond_3
    const/4 v1, 0x4

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    instance-of v1, p0, Landroidx/compose/ui/node/n;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/n;

    invoke-static {v1}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    :cond_4
    const/16 v1, 0x8

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_5

    instance-of v1, p0, Landroidx/compose/ui/node/i1;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/i1;

    invoke-static {v1}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    :cond_5
    const/16 v1, 0x40

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_6

    instance-of v1, p0, Landroidx/compose/ui/node/a1;

    if-eqz v1, :cond_6

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/a1;

    invoke-static {v1}, Landroidx/compose/ui/node/b1;->a(Landroidx/compose/ui/node/a1;)V

    :cond_6
    const/16 v1, 0x400

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    instance-of v1, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v1, :cond_7

    if-eq p2, v0, :cond_7

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v1}, Landroidx/compose/ui/focus/u;->c(Landroidx/compose/ui/focus/FocusTargetNode;)V

    :cond_7
    const/16 v1, 0x800

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_9

    instance-of v1, p0, Landroidx/compose/ui/focus/m;

    if-eqz v1, :cond_9

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/focus/m;

    invoke-static {v1}, Landroidx/compose/ui/node/t0;->k(Landroidx/compose/ui/focus/m;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-ne p2, v0, :cond_8

    invoke-static {v1}, Landroidx/compose/ui/node/t0;->j(Landroidx/compose/ui/focus/m;)V

    goto :goto_0

    :cond_8
    invoke-static {v1}, Landroidx/compose/ui/focus/n;->a(Landroidx/compose/ui/focus/m;)V

    :cond_9
    :goto_0
    const/16 p2, 0x1000

    invoke-static {p2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_a

    instance-of p1, p0, Landroidx/compose/ui/focus/c;

    if-eqz p1, :cond_a

    check-cast p0, Landroidx/compose/ui/focus/c;

    invoke-static {p0}, Landroidx/compose/ui/focus/d;->b(Landroidx/compose/ui/focus/c;)V

    :cond_a
    return-void
.end method

.method public static final d(Landroidx/compose/ui/f$c;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autoInvalidateRemovedNode called on unattached node"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/t0;->b(Landroidx/compose/ui/f$c;II)V

    return-void
.end method

.method public static final e(Landroidx/compose/ui/f$c;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autoInvalidateUpdatedNode called on unattached node"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/t0;->b(Landroidx/compose/ui/f$c;II)V

    return-void
.end method

.method public static final f(Landroidx/compose/ui/f$b;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    instance-of v1, p0, Landroidx/compose/ui/layout/o;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    instance-of v1, p0, Landroidx/compose/ui/draw/f;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/semantics/j;

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    instance-of v1, p0, Landroidx/compose/ui/input/pointer/d0;

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    instance-of v1, p0, Landroidx/compose/ui/modifier/d;

    if-nez v1, :cond_4

    instance-of v1, p0, Landroidx/compose/ui/modifier/j;

    if-eqz v1, :cond_5

    :cond_4
    const/16 v1, 0x20

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    or-int/2addr v0, v1

    :cond_5
    instance-of p0, p0, Landroidx/compose/ui/layout/b0;

    if-eqz p0, :cond_6

    const/16 p0, 0x100

    invoke-static {p0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p0

    or-int/2addr v0, p0

    :cond_6
    return v0
.end method

.method public static final g(Landroidx/compose/ui/f$c;)I
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Landroidx/compose/ui/node/t0;->a:Landroidx/collection/k0;

    invoke-static {p0}, Landroidx/compose/ui/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/p0;->a(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object p0, v0, Landroidx/collection/p0;->c:[I

    aget p0, p0, v2

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    instance-of v3, p0, Landroidx/compose/ui/node/x;

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_2
    instance-of v3, p0, Landroidx/compose/ui/node/n;

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_3
    instance-of v3, p0, Landroidx/compose/ui/node/i1;

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_4
    instance-of v3, p0, Landroidx/compose/ui/node/e1;

    if-eqz v3, :cond_5

    const/16 v3, 0x10

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_5
    instance-of v3, p0, Landroidx/compose/ui/modifier/h;

    if-eqz v3, :cond_6

    const/16 v3, 0x20

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_6
    instance-of v3, p0, Landroidx/compose/ui/node/a1;

    if-eqz v3, :cond_7

    const/16 v3, 0x40

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_7
    instance-of v3, p0, Landroidx/compose/ui/node/w;

    if-eqz v3, :cond_8

    const/16 v3, 0x80

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_8
    instance-of v3, p0, Landroidx/compose/ui/node/p;

    if-eqz v3, :cond_9

    const/16 v3, 0x100

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_9
    instance-of v3, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v3, :cond_a

    const/16 v3, 0x400

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_a
    instance-of v3, p0, Landroidx/compose/ui/focus/m;

    if-eqz v3, :cond_b

    const/16 v3, 0x800

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_b
    instance-of v3, p0, Landroidx/compose/ui/focus/c;

    if-eqz v3, :cond_c

    const/16 v3, 0x1000

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_c
    instance-of v3, p0, Ld0/e;

    if-eqz v3, :cond_d

    const/16 v3, 0x2000

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_d
    instance-of v3, p0, Lf0/a;

    if-eqz v3, :cond_e

    const/16 v3, 0x4000

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_e
    instance-of v3, p0, Landroidx/compose/ui/node/d;

    if-eqz v3, :cond_f

    const v3, 0x8000

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_f
    instance-of p0, p0, Landroidx/compose/ui/node/m1;

    if-eqz p0, :cond_10

    const/high16 p0, 0x40000

    invoke-static {p0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p0

    or-int/2addr p0, v2

    goto :goto_0

    :cond_10
    move p0, v2

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroidx/collection/k0;->r(Ljava/lang/Object;I)V

    :goto_1
    return p0
.end method

.method public static final h(Landroidx/compose/ui/f$c;)I
    .locals 2

    instance-of v0, p0, Landroidx/compose/ui/node/i;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/ui/node/i;

    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->F1()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/t0;->h(Landroidx/compose/ui/f$c;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/t0;->g(Landroidx/compose/ui/f$c;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static final i(I)Z
    .locals 1

    const/16 v0, 0x80

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final j(Landroidx/compose/ui/focus/m;)V
    .locals 10

    const/16 v0, 0x400

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Landroidx/compose/runtime/collection/b;

    const/16 v2, 0x10

    new-array v3, v2, [Landroidx/compose/ui/f$c;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p0

    const/4 v3, 0x1

    sub-int/2addr p0, v3

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/f$c;

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v5

    and-int/2addr v5, v0

    if-nez v5, :cond_2

    invoke-static {v1, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    move-object v6, v5

    :goto_2
    if-eqz p0, :cond_1

    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_3

    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {p0}, Landroidx/compose/ui/focus/u;->c(Landroidx/compose/ui/focus/FocusTargetNode;)V

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_9

    instance-of v7, p0, Landroidx/compose/ui/node/i;

    if-eqz v7, :cond_9

    move-object v7, p0

    check-cast v7, Landroidx/compose/ui/node/i;

    invoke-virtual {v7}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v7

    move v8, v4

    :goto_3
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_7

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_4

    move-object p0, v7

    goto :goto_4

    :cond_4
    if-nez v6, :cond_5

    new-instance v6, Landroidx/compose/runtime/collection/b;

    new-array v9, v2, [Landroidx/compose/ui/f$c;

    invoke-direct {v6, v9, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {v6, p0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object p0, v5

    :cond_6
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v7

    goto :goto_3

    :cond_8
    if-ne v8, v3, :cond_9

    goto :goto_2

    :cond_9
    :goto_5
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p0

    goto :goto_1

    :cond_b
    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "visitChildren called on an unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final k(Landroidx/compose/ui/focus/m;)Z
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/b;->a:Landroidx/compose/ui/node/b;

    invoke-virtual {v0}, Landroidx/compose/ui/node/b;->b()V

    invoke-interface {p0, v0}, Landroidx/compose/ui/focus/m;->r0(Landroidx/compose/ui/focus/k;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/b;->a()Z

    move-result p0

    return p0
.end method

.class final Landroidx/compose/foundation/layout/SizeNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/x;


# instance fields
.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Z


# direct methods
.method private constructor <init>(FFFFZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/SizeNode;->n:F

    iput p2, p0, Landroidx/compose/foundation/layout/SizeNode;->o:F

    iput p3, p0, Landroidx/compose/foundation/layout/SizeNode;->p:F

    iput p4, p0, Landroidx/compose/foundation/layout/SizeNode;->q:F

    iput-boolean p5, p0, Landroidx/compose/foundation/layout/SizeNode;->r:Z

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/SizeNode;-><init>(FFFFZ)V

    return-void
.end method

.method private final D1(Lo0/e;)J
    .locals 7

    iget v0, p0, Landroidx/compose/foundation/layout/SizeNode;->p:F

    sget-object v1, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {v1}, Lo0/i$a;->b()F

    move-result v2

    invoke-static {v0, v2}, Lo0/i;->i(FF)Z

    move-result v0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/layout/SizeNode;->p:F

    invoke-interface {p1, v0}, Lo0/e;->c0(F)I

    move-result v0

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v4, p0, Landroidx/compose/foundation/layout/SizeNode;->q:F

    invoke-virtual {v1}, Lo0/i$a;->b()F

    move-result v5

    invoke-static {v4, v5}, Lo0/i;->i(FF)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Landroidx/compose/foundation/layout/SizeNode;->q:F

    invoke-interface {p1, v4}, Lo0/e;->c0(F)I

    move-result v4

    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget v5, p0, Landroidx/compose/foundation/layout/SizeNode;->n:F

    invoke-virtual {v1}, Lo0/i$a;->b()F

    move-result v6

    invoke-static {v5, v6}, Lo0/i;->i(FF)Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, p0, Landroidx/compose/foundation/layout/SizeNode;->n:F

    invoke-interface {p1, v5}, Lo0/e;->c0(F)I

    move-result v5

    invoke-static {v5, v0}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v5

    invoke-static {v5, v3}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v5

    if-eq v5, v2, :cond_2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget v6, p0, Landroidx/compose/foundation/layout/SizeNode;->o:F

    invoke-virtual {v1}, Lo0/i$a;->b()F

    move-result v1

    invoke-static {v6, v1}, Lo0/i;->i(FF)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/compose/foundation/layout/SizeNode;->o:F

    invoke-interface {p1, v1}, Lo0/e;->c0(F)I

    move-result p1

    invoke-static {p1, v4}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result p1

    invoke-static {p1, v3}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result p1

    if-eq p1, v2, :cond_3

    move v3, p1

    :cond_3
    invoke-static {v5, v0, v3, v4}, Lo0/c;->a(IIII)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final E1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/SizeNode;->r:Z

    return-void
.end method

.method public final F1(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/SizeNode;->q:F

    return-void
.end method

.method public final G1(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/SizeNode;->p:F

    return-void
.end method

.method public final H1(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/SizeNode;->o:F

    return-void
.end method

.method public final I1(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/SizeNode;->n:F

    return-void
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 7

    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SizeNode;->D1(Lo0/e;)J

    move-result-wide v0

    iget-boolean v2, p0, Landroidx/compose/foundation/layout/SizeNode;->r:Z

    if-eqz v2, :cond_0

    invoke-static {p3, p4, v0, v1}, Lo0/c;->g(JJ)J

    move-result-wide p3

    goto/16 :goto_4

    :cond_0
    iget v2, p0, Landroidx/compose/foundation/layout/SizeNode;->n:F

    sget-object v3, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {v3}, Lo0/i$a;->b()F

    move-result v4

    invoke-static {v2, v4}, Lo0/i;->i(FF)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lo0/b;->n(J)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {p3, p4}, Lo0/b;->n(J)I

    move-result v2

    invoke-static {v0, v1}, Lo0/b;->l(J)I

    move-result v4

    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v2

    :goto_0
    iget v4, p0, Landroidx/compose/foundation/layout/SizeNode;->p:F

    invoke-virtual {v3}, Lo0/i$a;->b()F

    move-result v5

    invoke-static {v4, v5}, Lo0/i;->i(FF)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0, v1}, Lo0/b;->l(J)I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-static {p3, p4}, Lo0/b;->l(J)I

    move-result v4

    invoke-static {v0, v1}, Lo0/b;->n(J)I

    move-result v5

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v4

    :goto_1
    iget v5, p0, Landroidx/compose/foundation/layout/SizeNode;->o:F

    invoke-virtual {v3}, Lo0/i$a;->b()F

    move-result v6

    invoke-static {v5, v6}, Lo0/i;->i(FF)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0, v1}, Lo0/b;->m(J)I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-static {p3, p4}, Lo0/b;->m(J)I

    move-result v5

    invoke-static {v0, v1}, Lo0/b;->k(J)I

    move-result v6

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v5

    :goto_2
    iget v6, p0, Landroidx/compose/foundation/layout/SizeNode;->q:F

    invoke-virtual {v3}, Lo0/i$a;->b()F

    move-result v3

    invoke-static {v6, v3}, Lo0/i;->i(FF)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0, v1}, Lo0/b;->k(J)I

    move-result p3

    goto :goto_3

    :cond_4
    invoke-static {p3, p4}, Lo0/b;->k(J)I

    move-result p3

    invoke-static {v0, v1}, Lo0/b;->m(J)I

    move-result p4

    invoke-static {p3, p4}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result p3

    :goto_3
    invoke-static {v2, v4, v5, p3}, Lo0/c;->a(IIII)J

    move-result-wide p3

    :goto_4
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v2

    new-instance v4, Landroidx/compose/foundation/layout/SizeNode$measure$1;

    invoke-direct {v4, p2}, Landroidx/compose/foundation/layout/SizeNode$measure$1;-><init>(Landroidx/compose/ui/layout/g0;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method

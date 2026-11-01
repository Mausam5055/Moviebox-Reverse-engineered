.class final Landroidx/compose/foundation/layout/WrapContentNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/x;


# instance fields
.field private n:Landroidx/compose/foundation/layout/Direction;

.field private o:Z

.field private p:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentNode;->n:Landroidx/compose/foundation/layout/Direction;

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/WrapContentNode;->o:Z

    iput-object p3, p0, Landroidx/compose/foundation/layout/WrapContentNode;->p:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final D1()Lkotlin/jvm/functions/Function2;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentNode;->p:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final E1(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentNode;->p:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final F1(Landroidx/compose/foundation/layout/Direction;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentNode;->n:Landroidx/compose/foundation/layout/Direction;

    return-void
.end method

.method public final G1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/WrapContentNode;->o:Z

    return-void
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 14

    move-object v6, p0

    iget-object v0, v6, Landroidx/compose/foundation/layout/WrapContentNode;->n:Landroidx/compose/foundation/layout/Direction;

    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static/range {p3 .. p4}, Lo0/b;->n(J)I

    move-result v0

    :goto_0
    iget-object v3, v6, Landroidx/compose/foundation/layout/WrapContentNode;->n:Landroidx/compose/foundation/layout/Direction;

    sget-object v4, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static/range {p3 .. p4}, Lo0/b;->m(J)I

    move-result v2

    :goto_1
    iget-object v3, v6, Landroidx/compose/foundation/layout/WrapContentNode;->n:Landroidx/compose/foundation/layout/Direction;

    const v5, 0x7fffffff

    if-eq v3, v1, :cond_2

    iget-boolean v1, v6, Landroidx/compose/foundation/layout/WrapContentNode;->o:Z

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    invoke-static/range {p3 .. p4}, Lo0/b;->l(J)I

    move-result v1

    :goto_2
    iget-object v3, v6, Landroidx/compose/foundation/layout/WrapContentNode;->n:Landroidx/compose/foundation/layout/Direction;

    if-eq v3, v4, :cond_3

    iget-boolean v3, v6, Landroidx/compose/foundation/layout/WrapContentNode;->o:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static/range {p3 .. p4}, Lo0/b;->k(J)I

    move-result v5

    :goto_3
    invoke-static {v0, v1, v2, v5}, Lo0/c;->a(IIII)J

    move-result-wide v0

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v0

    invoke-static/range {p3 .. p4}, Lo0/b;->n(J)I

    move-result v1

    invoke-static/range {p3 .. p4}, Lo0/b;->l(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v8

    invoke-virtual {v3}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v0

    invoke-static/range {p3 .. p4}, Lo0/b;->m(J)I

    move-result v1

    invoke-static/range {p3 .. p4}, Lo0/b;->k(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v9

    new-instance v11, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;

    move-object v0, v11

    move-object v1, p0

    move v2, v8

    move v4, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;-><init>(Landroidx/compose/foundation/layout/WrapContentNode;ILandroidx/compose/ui/layout/g0;ILandroidx/compose/ui/layout/x;)V

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    move-result-object v0

    return-object v0
.end method

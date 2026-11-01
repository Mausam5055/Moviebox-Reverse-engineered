.class final Landroidx/compose/foundation/layout/PaddingNode;
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

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->n:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingNode;->o:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingNode;->p:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingNode;->q:F

    iput-boolean p5, p0, Landroidx/compose/foundation/layout/PaddingNode;->r:Z

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/PaddingNode;-><init>(FFFFZ)V

    return-void
.end method


# virtual methods
.method public final D1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/PaddingNode;->r:Z

    return v0
.end method

.method public final E1()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingNode;->n:F

    return v0
.end method

.method public final F1()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingNode;->o:F

    return v0
.end method

.method public final G1(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->q:F

    return-void
.end method

.method public final H1(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->p:F

    return-void
.end method

.method public final I1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->r:Z

    return-void
.end method

.method public final J1(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->n:F

    return-void
.end method

.method public final K1(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingNode;->o:F

    return-void
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 10

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingNode;->n:F

    invoke-interface {p1, v0}, Lo0/e;->c0(F)I

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingNode;->p:F

    invoke-interface {p1, v1}, Lo0/e;->c0(F)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingNode;->o:F

    invoke-interface {p1, v1}, Lo0/e;->c0(F)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingNode;->q:F

    invoke-interface {p1, v2}, Lo0/e;->c0(F)I

    move-result v2

    add-int/2addr v1, v2

    neg-int v2, v0

    neg-int v3, v1

    invoke-static {p3, p4, v2, v3}, Lo0/c;->n(JII)J

    move-result-wide v2

    invoke-interface {p2, v2, v3}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {p3, p4, v2}, Lo0/c;->i(JI)I

    move-result v4

    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p3, p4, v0}, Lo0/c;->h(JI)I

    move-result v5

    new-instance v7, Landroidx/compose/foundation/layout/PaddingNode$measure$1;

    invoke-direct {v7, p0, p2, p1}, Landroidx/compose/foundation/layout/PaddingNode$measure$1;-><init>(Landroidx/compose/foundation/layout/PaddingNode;Landroidx/compose/ui/layout/g0;Landroidx/compose/ui/layout/x;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method

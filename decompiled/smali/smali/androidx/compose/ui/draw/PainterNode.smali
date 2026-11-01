.class final Landroidx/compose/ui/draw/PainterNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/x;
.implements Landroidx/compose/ui/node/n;


# instance fields
.field private n:Landroidx/compose/ui/graphics/painter/Painter;

.field private o:Z

.field private p:Landroidx/compose/ui/b;

.field private q:Landroidx/compose/ui/layout/e;

.field private r:F

.field private s:Landroidx/compose/ui/graphics/v1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    iput-boolean p2, p0, Landroidx/compose/ui/draw/PainterNode;->o:Z

    iput-object p3, p0, Landroidx/compose/ui/draw/PainterNode;->p:Landroidx/compose/ui/b;

    iput-object p4, p0, Landroidx/compose/ui/draw/PainterNode;->q:Landroidx/compose/ui/layout/e;

    iput p5, p0, Landroidx/compose/ui/draw/PainterNode;->r:F

    iput-object p6, p0, Landroidx/compose/ui/draw/PainterNode;->s:Landroidx/compose/ui/graphics/v1;

    return-void
.end method

.method private final D1(J)J
    .locals 4

    invoke-direct {p0}, Landroidx/compose/ui/draw/PainterNode;->G1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->h()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/draw/PainterNode;->I1(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ly/m;->i(J)F

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/m;->i(J)F

    move-result v0

    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/painter/Painter;->h()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroidx/compose/ui/draw/PainterNode;->H1(J)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1, p2}, Ly/m;->g(J)F

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/painter/Painter;->h()J

    move-result-wide v1

    invoke-static {v1, v2}, Ly/m;->g(J)F

    move-result v1

    :goto_1
    invoke-static {v0, v1}, Ly/n;->a(FF)J

    move-result-wide v0

    invoke-static {p1, p2}, Ly/m;->i(J)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p1, p2}, Ly/m;->g(J)F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_4

    :goto_2
    sget-object p1, Ly/m;->b:Ly/m$a;

    invoke-virtual {p1}, Ly/m$a;->b()J

    move-result-wide p1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Landroidx/compose/ui/draw/PainterNode;->q:Landroidx/compose/ui/layout/e;

    invoke-interface {v2, v0, v1, p1, p2}, Landroidx/compose/ui/layout/e;->a(JJ)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/layout/m0;->b(JJ)J

    move-result-wide p1

    :goto_3
    return-wide p1
.end method

.method private final G1()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/draw/PainterNode;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->h()J

    move-result-wide v0

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final H1(J)Z
    .locals 2

    sget-object v0, Ly/m;->b:Ly/m$a;

    invoke-virtual {v0}, Ly/m$a;->a()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ly/m;->f(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ly/m;->g(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final I1(J)Z
    .locals 2

    sget-object v0, Ly/m;->b:Ly/m$a;

    invoke-virtual {v0}, Ly/m$a;->a()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ly/m;->f(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ly/m;->i(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final J1(J)J
    .locals 11

    invoke-static {p1, p2}, Lo0/b;->h(J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lo0/b;->g(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1, p2}, Lo0/b;->j(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, p2}, Lo0/b;->i(J)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/draw/PainterNode;->G1()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    :cond_3
    invoke-static {p1, p2}, Lo0/b;->l(J)I

    move-result v5

    invoke-static {p1, p2}, Lo0/b;->k(J)I

    move-result v7

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-wide v3, p1

    invoke-static/range {v3 .. v10}, Lo0/b;->d(JIIIIILjava/lang/Object;)J

    move-result-wide p1

    return-wide p1

    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->h()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/draw/PainterNode;->I1(J)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0, v1}, Ly/m;->i(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_1

    :cond_5
    invoke-static {p1, p2}, Lo0/b;->n(J)I

    move-result v2

    :goto_1
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/draw/PainterNode;->H1(J)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1}, Ly/m;->g(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_2

    :cond_6
    invoke-static {p1, p2}, Lo0/b;->m(J)I

    move-result v0

    :goto_2
    invoke-static {p1, p2, v2}, Lo0/c;->i(JI)I

    move-result v1

    invoke-static {p1, p2, v0}, Lo0/c;->h(JI)I

    move-result v0

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Ly/n;->a(FF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/draw/PainterNode;->D1(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/m;->i(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p1, p2, v2}, Lo0/c;->i(JI)I

    move-result v5

    invoke-static {v0, v1}, Ly/m;->g(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, p2, v0}, Lo0/c;->h(JI)I

    move-result v7

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-wide v3, p1

    invoke-static/range {v3 .. v10}, Lo0/b;->d(JIIIIILjava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public final E1()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    return-object v0
.end method

.method public final F1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/draw/PainterNode;->o:Z

    return v0
.end method

.method public final K1(Landroidx/compose/ui/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/PainterNode;->p:Landroidx/compose/ui/b;

    return-void
.end method

.method public final L1(Landroidx/compose/ui/graphics/v1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/PainterNode;->s:Landroidx/compose/ui/graphics/v1;

    return-void
.end method

.method public final M1(Landroidx/compose/ui/layout/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/PainterNode;->q:Landroidx/compose/ui/layout/e;

    return-void
.end method

.method public final N1(Landroidx/compose/ui/graphics/painter/Painter;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    return-void
.end method

.method public final O1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/draw/PainterNode;->o:Z

    return-void
.end method

.method public i1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n(Lz/c;)V
    .locals 12

    iget-object v0, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->h()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/draw/PainterNode;->I1(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ly/m;->i(J)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ly/m;->i(J)F

    move-result v2

    :goto_0
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/draw/PainterNode;->H1(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v1}, Ly/m;->g(J)F

    move-result v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/m;->g(J)F

    move-result v0

    :goto_1
    invoke-static {v2, v0}, Ly/n;->a(FF)J

    move-result-wide v0

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ly/m;->i(J)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ly/m;->g(J)F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3

    :goto_2
    sget-object v0, Ly/m;->b:Ly/m$a;

    invoke-virtual {v0}, Ly/m$a;->b()J

    move-result-wide v0

    :goto_3
    move-wide v4, v0

    goto :goto_4

    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/draw/PainterNode;->q:Landroidx/compose/ui/layout/e;

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v3

    invoke-interface {v2, v0, v1, v3, v4}, Landroidx/compose/ui/layout/e;->a(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/layout/m0;->b(JJ)J

    move-result-wide v0

    goto :goto_3

    :goto_4
    iget-object v6, p0, Landroidx/compose/ui/draw/PainterNode;->p:Landroidx/compose/ui/b;

    invoke-static {v4, v5}, Ly/m;->i(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v4, v5}, Ly/m;->g(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lo0/u;->a(II)J

    move-result-wide v7

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/m;->i(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Ly/m;->g(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lo0/u;->a(II)J

    move-result-wide v9

    invoke-interface {p1}, Lz/g;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    invoke-interface/range {v6 .. v11}, Landroidx/compose/ui/b;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/p;->h(J)I

    move-result v2

    int-to-float v8, v2

    invoke-static {v0, v1}, Lo0/p;->i(J)I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lz/g;->H0()Lz/d;

    move-result-object v1

    invoke-interface {v1}, Lz/d;->c()Lz/j;

    move-result-object v1

    invoke-interface {v1, v8, v0}, Lz/j;->c(FF)V

    :try_start_0
    iget-object v2, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    iget v6, p0, Landroidx/compose/ui/draw/PainterNode;->r:F

    iget-object v7, p0, Landroidx/compose/ui/draw/PainterNode;->s:Landroidx/compose/ui/graphics/v1;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/ui/graphics/painter/Painter;->g(Lz/g;JFLandroidx/compose/ui/graphics/v1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lz/g;->H0()Lz/d;

    move-result-object v1

    invoke-interface {v1}, Lz/d;->c()Lz/j;

    move-result-object v1

    neg-float v2, v8

    neg-float v0, v0

    invoke-interface {v1, v2, v0}, Lz/j;->c(FF)V

    invoke-interface {p1}, Lz/c;->Y0()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Lz/g;->H0()Lz/d;

    move-result-object p1

    invoke-interface {p1}, Lz/d;->c()Lz/j;

    move-result-object p1

    neg-float v2, v8

    neg-float v0, v0

    invoke-interface {p1, v2, v0}, Lz/j;->c(FF)V

    throw v1
.end method

.method public final setAlpha(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/draw/PainterNode;->r:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PainterModifier(painter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/draw/PainterNode;->n:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeToIntrinsics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/draw/PainterNode;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/draw/PainterNode;->p:Landroidx/compose/ui/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/draw/PainterNode;->r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", colorFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/draw/PainterNode;->s:Landroidx/compose/ui/graphics/v1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic w0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/m;->a(Landroidx/compose/ui/node/n;)V

    return-void
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 7

    invoke-direct {p0, p3, p4}, Landroidx/compose/ui/draw/PainterNode;->J1(J)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v2

    new-instance v4, Landroidx/compose/ui/draw/PainterNode$measure$1;

    invoke-direct {v4, p2}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/g0;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method

.class public abstract Landroidx/compose/ui/graphics/painter/Painter;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroidx/compose/ui/graphics/m4;

.field private b:Z

.field private c:Landroidx/compose/ui/graphics/v1;

.field private d:F

.field private e:Landroidx/compose/ui/unit/LayoutDirection;

.field private final f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->d:F

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->e:Landroidx/compose/ui/unit/LayoutDirection;

    new-instance v0, Landroidx/compose/ui/graphics/painter/Painter$drawLambda$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/painter/Painter$drawLambda$1;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final d(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->d:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->a(F)Z

    move-result v0

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->a:Landroidx/compose/ui/graphics/m4;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/m4;->setAlpha(F)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->b:Z

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->i()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/m4;->setAlpha(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->b:Z

    :cond_3
    :goto_1
    iput p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->d:F

    :goto_2
    return-void
.end method

.method private final e(Landroidx/compose/ui/graphics/v1;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->c:Landroidx/compose/ui/graphics/v1;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->b(Landroidx/compose/ui/graphics/v1;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->a:Landroidx/compose/ui/graphics/m4;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->z(Landroidx/compose/ui/graphics/v1;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->b:Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->i()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/m4;->z(Landroidx/compose/ui/graphics/v1;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->b:Z

    :cond_2
    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->c:Landroidx/compose/ui/graphics/v1;

    :cond_3
    return-void
.end method

.method private final f(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->e:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->c(Landroidx/compose/ui/unit/LayoutDirection;)Z

    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->e:Landroidx/compose/ui/unit/LayoutDirection;

    :cond_0
    return-void
.end method

.method private final i()Landroidx/compose/ui/graphics/m4;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->a:Landroidx/compose/ui/graphics/m4;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->a:Landroidx/compose/ui/graphics/m4;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b(Landroidx/compose/ui/graphics/v1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected c(Landroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lz/g;JFLandroidx/compose/ui/graphics/v1;)V
    .locals 4

    invoke-direct {p0, p4}, Landroidx/compose/ui/graphics/painter/Painter;->d(F)V

    invoke-direct {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->e(Landroidx/compose/ui/graphics/v1;)V

    invoke-interface {p1}, Lz/g;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p5

    invoke-direct {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->f(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/m;->i(J)F

    move-result p5

    invoke-static {p2, p3}, Ly/m;->i(J)F

    move-result v0

    sub-float/2addr p5, v0

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/m;->g(J)F

    move-result v0

    invoke-static {p2, p3}, Ly/m;->g(J)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-interface {p1}, Lz/g;->H0()Lz/d;

    move-result-object v1

    invoke-interface {v1}, Lz/d;->c()Lz/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2, p5, v0}, Lz/j;->f(FFFF)V

    cmpl-float p4, p4, v2

    const/high16 v1, -0x80000000

    if-lez p4, :cond_1

    :try_start_0
    invoke-static {p2, p3}, Ly/m;->i(J)F

    move-result p4

    cmpl-float p4, p4, v2

    if-lez p4, :cond_1

    invoke-static {p2, p3}, Ly/m;->g(J)F

    move-result p4

    cmpl-float p4, p4, v2

    if-lez p4, :cond_1

    iget-boolean p4, p0, Landroidx/compose/ui/graphics/painter/Painter;->b:Z

    if-eqz p4, :cond_0

    sget-object p4, Ly/g;->b:Ly/g$a;

    invoke-virtual {p4}, Ly/g$a;->c()J

    move-result-wide v2

    invoke-static {p2, p3}, Ly/m;->i(J)F

    move-result p4

    invoke-static {p2, p3}, Ly/m;->g(J)F

    move-result p2

    invoke-static {p4, p2}, Ly/n;->a(FF)J

    move-result-wide p2

    invoke-static {v2, v3, p2, p3}, Ly/j;->a(JJ)Ly/i;

    move-result-object p2

    invoke-interface {p1}, Lz/g;->H0()Lz/d;

    move-result-object p3

    invoke-interface {p3}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object p3

    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->i()Landroidx/compose/ui/graphics/m4;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p3, p2, p4}, Landroidx/compose/ui/graphics/m1;->d(Ly/i;Landroidx/compose/ui/graphics/m4;)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->j(Lz/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m1;->j()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-interface {p3}, Landroidx/compose/ui/graphics/m1;->j()V

    throw p2

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->j(Lz/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_0
    invoke-interface {p1}, Lz/g;->H0()Lz/d;

    move-result-object p1

    invoke-interface {p1}, Lz/d;->c()Lz/j;

    move-result-object p1

    neg-float p3, p5

    neg-float p4, v0

    invoke-interface {p1, v1, v1, p3, p4}, Lz/j;->f(FFFF)V

    throw p2

    :cond_1
    :goto_1
    invoke-interface {p1}, Lz/g;->H0()Lz/d;

    move-result-object p1

    invoke-interface {p1}, Lz/d;->c()Lz/j;

    move-result-object p1

    neg-float p2, p5

    neg-float p3, v0

    invoke-interface {p1, v1, v1, p2, p3}, Lz/j;->f(FFFF)V

    return-void
.end method

.method public abstract h()J
.end method

.method protected abstract j(Lz/g;)V
.end method

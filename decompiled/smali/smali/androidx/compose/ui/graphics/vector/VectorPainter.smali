.class public final Landroidx/compose/ui/graphics/vector/VectorPainter;
.super Landroidx/compose/ui/graphics/painter/Painter;


# instance fields
.field private final g:Landroidx/compose/runtime/i1;

.field private final h:Landroidx/compose/runtime/i1;

.field private final i:Landroidx/compose/ui/graphics/vector/VectorComponent;

.field private final j:Landroidx/compose/runtime/e1;

.field private k:F

.field private l:Landroidx/compose/ui/graphics/v1;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V
    .locals 3

    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    sget-object v0, Ly/m;->b:Ly/m$a;

    invoke-virtual {v0}, Ly/m$a;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/m;->c(J)Ly/m;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->g:Landroidx/compose/runtime/i1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->h:Landroidx/compose/runtime/i1;

    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorComponent;

    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/vector/VectorComponent;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V

    new-instance p1, Landroidx/compose/ui/graphics/vector/VectorPainter$vector$1$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/vector/VectorPainter$vector$1$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorPainter;)V

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->o(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->i:Landroidx/compose/ui/graphics/vector/VectorComponent;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/n2;->a(I)Landroidx/compose/runtime/e1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->j:Landroidx/compose/runtime/e1;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->k:F

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->m:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/GroupComponent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V

    return-void
.end method

.method public static final synthetic k(Landroidx/compose/ui/graphics/vector/VectorPainter;)I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->m:I

    return p0
.end method

.method public static final synthetic l(Landroidx/compose/ui/graphics/vector/VectorPainter;)I
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->o()I

    move-result p0

    return p0
.end method

.method public static final synthetic m(Landroidx/compose/ui/graphics/vector/VectorPainter;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/VectorPainter;->s(I)V

    return-void
.end method

.method private final o()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->j:Landroidx/compose/runtime/e1;

    invoke-interface {v0}, Landroidx/compose/runtime/n0;->getIntValue()I

    move-result v0

    return v0
.end method

.method private final s(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->j:Landroidx/compose/runtime/e1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/e1;->setIntValue(I)V

    return-void
.end method


# virtual methods
.method protected a(F)Z
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->k:F

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Landroidx/compose/ui/graphics/v1;)Z
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->l:Landroidx/compose/ui/graphics/v1;

    const/4 p1, 0x1

    return p1
.end method

.method public h()J
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method protected j(Lz/g;)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->i:Landroidx/compose/ui/graphics/vector/VectorComponent;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->l:Landroidx/compose/ui/graphics/v1;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->k()Landroidx/compose/ui/graphics/v1;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lz/g;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lz/g;->O0()J

    move-result-wide v2

    invoke-interface {p1}, Lz/g;->H0()Lz/d;

    move-result-object v4

    invoke-interface {v4}, Lz/d;->i()J

    move-result-wide v5

    invoke-interface {v4}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/ui/graphics/m1;->n()V

    :try_start_0
    invoke-interface {v4}, Lz/d;->c()Lz/j;

    move-result-object v7

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {v7, v8, v9, v2, v3}, Lz/j;->e(FFJ)V

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->k:F

    invoke-virtual {v0, p1, v2, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->i(Lz/g;FLandroidx/compose/ui/graphics/v1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-interface {v4, v5, v6}, Lz/d;->f(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v4}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-interface {v4, v5, v6}, Lz/d;->f(J)V

    throw p1

    :cond_1
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->k:F

    invoke-virtual {v0, p1, v2, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->i(Lz/g;FLandroidx/compose/ui/graphics/v1;)V

    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->o()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->m:I

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->h:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final p()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->g:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/m;

    invoke-virtual {v0}, Ly/m;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->h:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Landroidx/compose/ui/graphics/v1;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->i:Landroidx/compose/ui/graphics/vector/VectorComponent;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->n(Landroidx/compose/ui/graphics/v1;)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->i:Landroidx/compose/ui/graphics/vector/VectorComponent;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->p(Ljava/lang/String;)V

    return-void
.end method

.method public final u(J)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->g:Landroidx/compose/runtime/i1;

    invoke-static {p1, p2}, Ly/m;->c(J)Ly/m;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final v(J)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->i:Landroidx/compose/ui/graphics/vector/VectorComponent;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorComponent;->q(J)V

    return-void
.end method

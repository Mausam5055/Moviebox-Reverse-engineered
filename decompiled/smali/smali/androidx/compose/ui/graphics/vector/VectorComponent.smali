.class public final Landroidx/compose/ui/graphics/vector/VectorComponent;
.super Landroidx/compose/ui/graphics/vector/i;


# instance fields
.field private final b:Landroidx/compose/ui/graphics/vector/GroupComponent;

.field private c:Ljava/lang/String;

.field private d:Z

.field private final e:Landroidx/compose/ui/graphics/vector/a;

.field private f:Lkotlin/jvm/functions/Function0;

.field private final g:Landroidx/compose/runtime/i1;

.field private h:Landroidx/compose/ui/graphics/v1;

.field private final i:Landroidx/compose/runtime/i1;

.field private j:J

.field private k:F

.field private l:F

.field private final m:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/i;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/graphics/vector/VectorComponent$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;)V

    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->d(Lkotlin/jvm/functions/Function1;)V

    const-string p1, ""

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->d:Z

    new-instance p1, Landroidx/compose/ui/graphics/vector/a;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/vector/a;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->e:Landroidx/compose/ui/graphics/vector/a;

    sget-object p1, Landroidx/compose/ui/graphics/vector/VectorComponent$invalidateCallback$1;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComponent$invalidateCallback$1;

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->f:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-static {v0, v0, p1, v0}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->g:Landroidx/compose/runtime/i1;

    sget-object v1, Ly/m;->b:Ly/m$a;

    invoke-virtual {v1}, Ly/m$a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ly/m;->c(J)Ly/m;

    move-result-object v2

    invoke-static {v2, v0, p1, v0}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->i:Landroidx/compose/runtime/i1;

    invoke-virtual {v1}, Ly/m$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->j:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->k:F

    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->l:F

    new-instance p1, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->m:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic e(Landroidx/compose/ui/graphics/vector/VectorComponent;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->h()V

    return-void
.end method

.method public static final synthetic f(Landroidx/compose/ui/graphics/vector/VectorComponent;)F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->k:F

    return p0
.end method

.method public static final synthetic g(Landroidx/compose/ui/graphics/vector/VectorComponent;)F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->l:F

    return p0
.end method

.method private final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->d:Z

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lz/g;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->i(Lz/g;FLandroidx/compose/ui/graphics/v1;)V

    return-void
.end method

.method public final i(Lz/g;FLandroidx/compose/ui/graphics/v1;)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->k()Landroidx/compose/ui/graphics/v1;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/k;->f(Landroidx/compose/ui/graphics/v1;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroidx/compose/ui/graphics/vector/k;->f(Landroidx/compose/ui/graphics/v1;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->a()I

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->b()I

    move-result v0

    goto :goto_0

    :goto_1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->d:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->j:J

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ly/m;->f(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->j()I

    move-result v0

    invoke-static {v2, v0}, Landroidx/compose/ui/graphics/f4;->i(II)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    sget-object v0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->a()I

    move-result v0

    invoke-static {v2, v0}, Landroidx/compose/ui/graphics/f4;->i(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v3, Landroidx/compose/ui/graphics/v1;->b:Landroidx/compose/ui/graphics/v1$a;

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->g()J

    move-result-wide v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/graphics/v1$a;->b(Landroidx/compose/ui/graphics/v1$a;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/v1;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->h:Landroidx/compose/ui/graphics/v1;

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/m;->i(J)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->m()J

    move-result-wide v3

    invoke-static {v3, v4}, Ly/m;->i(J)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->k:F

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/m;->g(J)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->m()J

    move-result-wide v3

    invoke-static {v3, v4}, Ly/m;->g(J)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->l:F

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->e:Landroidx/compose/ui/graphics/vector/a;

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ly/m;->i(J)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-int v0, v0

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ly/m;->g(J)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    invoke-static {v0, v3}, Lo0/u;->a(II)J

    move-result-wide v3

    invoke-interface {p1}, Lz/g;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    iget-object v7, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->m:Lkotlin/jvm/functions/Function1;

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/a;->b(IJLo0/e;Landroidx/compose/ui/unit/LayoutDirection;Lkotlin/jvm/functions/Function1;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->d:Z

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->j:J

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->k()Landroidx/compose/ui/graphics/v1;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->k()Landroidx/compose/ui/graphics/v1;

    move-result-object p3

    goto :goto_3

    :cond_5
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->h:Landroidx/compose/ui/graphics/v1;

    :goto_3
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->e:Landroidx/compose/ui/graphics/vector/a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/graphics/vector/a;->c(Lz/g;FLandroidx/compose/ui/graphics/v1;)V

    return-void
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->e:Landroidx/compose/ui/graphics/vector/a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/a;->d()Landroidx/compose/ui/graphics/e4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/e4;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->b()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final k()Landroidx/compose/ui/graphics/v1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->g:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/v1;

    return-object v0
.end method

.method public final l()Landroidx/compose/ui/graphics/vector/GroupComponent;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    return-object v0
.end method

.method public final m()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->i:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly/m;

    invoke-virtual {v0}, Ly/m;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n(Landroidx/compose/ui/graphics/v1;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->g:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->c:Ljava/lang/String;

    return-void
.end method

.method public final q(J)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->i:Landroidx/compose/runtime/i1;

    invoke-static {p1, p2}, Ly/m;->c(J)Ly/m;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tviewportWidth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ly/m;->i(J)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tviewportHeight: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ly/m;->g(J)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

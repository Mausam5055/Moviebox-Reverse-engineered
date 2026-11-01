.class public final Landroidx/compose/ui/graphics/vector/PathComponent;
.super Landroidx/compose/ui/graphics/vector/i;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroidx/compose/ui/graphics/j1;

.field private d:F

.field private e:Ljava/util/List;

.field private f:I

.field private g:F

.field private h:F

.field private i:Landroidx/compose/ui/graphics/j1;

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lz/m;

.field private final t:Landroidx/compose/ui/graphics/Path;

.field private u:Landroidx/compose/ui/graphics/Path;

.field private final v:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/i;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, ""

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->b:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->d:F

    invoke-static {}, Landroidx/compose/ui/graphics/vector/k;->d()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->e:Ljava/util/List;

    invoke-static {}, Landroidx/compose/ui/graphics/vector/k;->a()I

    move-result v1

    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->f:I

    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->g:F

    invoke-static {}, Landroidx/compose/ui/graphics/vector/k;->b()I

    move-result v1

    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->j:I

    invoke-static {}, Landroidx/compose/ui/graphics/vector/k;->c()I

    move-result v1

    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->k:I

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->l:F

    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->n:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->p:Z

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->q:Z

    invoke-static {}, Landroidx/compose/ui/graphics/x0;->a()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->t:Landroidx/compose/ui/graphics/Path;

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->v:Lkotlin/Lazy;

    return-void
.end method

.method private final f()Landroidx/compose/ui/graphics/r4;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->v:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/r4;

    return-object v0
.end method

.method private final v()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->e:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->t:Landroidx/compose/ui/graphics/Path;

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/h;->c(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->w()V

    return-void
.end method

.method private final w()V
    .locals 7

    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->m:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->n:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->t:Landroidx/compose/ui/graphics/Path;

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->t:Landroidx/compose/ui/graphics/Path;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/x0;->a()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->h()I

    move-result v0

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Path;->b()V

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v3, v0}, Landroidx/compose/ui/graphics/Path;->e(I)V

    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->f()Landroidx/compose/ui/graphics/r4;

    move-result-object v0

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->t:Landroidx/compose/ui/graphics/Path;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/graphics/r4;->b(Landroidx/compose/ui/graphics/Path;Z)V

    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->f()Landroidx/compose/ui/graphics/r4;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/r4;->getLength()F

    move-result v0

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->m:F

    iget v4, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->o:F

    add-float/2addr v3, v4

    rem-float/2addr v3, v2

    mul-float/2addr v3, v0

    iget v5, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->n:F

    add-float/2addr v5, v4

    rem-float/2addr v5, v2

    mul-float/2addr v5, v0

    cmpl-float v2, v3, v5

    const/4 v4, 0x1

    if-lez v2, :cond_2

    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->f()Landroidx/compose/ui/graphics/r4;

    move-result-object v2

    iget-object v6, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v2, v3, v0, v6, v4}, Landroidx/compose/ui/graphics/r4;->a(FFLandroidx/compose/ui/graphics/Path;Z)Z

    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->f()Landroidx/compose/ui/graphics/r4;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v0, v1, v5, v2, v4}, Landroidx/compose/ui/graphics/r4;->a(FFLandroidx/compose/ui/graphics/Path;Z)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->f()Landroidx/compose/ui/graphics/r4;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v0, v3, v5, v1, v4}, Landroidx/compose/ui/graphics/r4;->a(FFLandroidx/compose/ui/graphics/Path;Z)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lz/g;)V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->p:Z

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->v()V

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->r:Z

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->w()V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->p:Z

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->r:Z

    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->c:Landroidx/compose/ui/graphics/j1;

    if-eqz v4, :cond_2

    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    iget v5, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->d:F

    const/16 v9, 0x38

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v10}, Lz/f;->g(Lz/g;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    :cond_2
    iget-object v13, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->i:Landroidx/compose/ui/graphics/j1;

    if-eqz v13, :cond_5

    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Lz/m;

    iget-boolean v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->q:Z

    if-nez v3, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v15, v2

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v2, Lz/m;

    iget v5, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->h:F

    iget v6, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->l:F

    iget v7, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->j:I

    iget v8, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->k:I

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lz/m;-><init>(FFIILandroidx/compose/ui/graphics/p4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Lz/m;

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->q:Z

    goto :goto_1

    :goto_3
    iget-object v12, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    iget v14, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->g:F

    const/16 v18, 0x30

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v19}, Lz/f;->g(Lz/g;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final e()Landroidx/compose/ui/graphics/j1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->c:Landroidx/compose/ui/graphics/j1;

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/graphics/j1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->i:Landroidx/compose/ui/graphics/j1;

    return-object v0
.end method

.method public final h(Landroidx/compose/ui/graphics/j1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->c:Landroidx/compose/ui/graphics/j1;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final i(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->d:F

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->e:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->p:Z

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final l(I)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->f:I

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Path;->e(I)V

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final m(Landroidx/compose/ui/graphics/j1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->i:Landroidx/compose/ui/graphics/j1;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final n(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->g:F

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->j:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->q:Z

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->k:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->q:Z

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final q(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->l:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->q:Z

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final r(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->h:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->q:Z

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final s(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->n:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->r:Z

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public final t(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->o:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->r:Z

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->t:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->m:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->r:Z

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/i;->c()V

    return-void
.end method

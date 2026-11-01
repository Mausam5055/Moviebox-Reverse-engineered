.class public Lcom/airbnb/lottie/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/airbnb/lottie/PerformanceTracker;

.field private final b:Ljava/util/HashSet;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/Map;

.field private e:F

.field private f:Ljava/util/Map;

.field private g:Ljava/util/List;

.field private h:Landroidx/collection/y0;

.field private i:Landroidx/collection/x;

.field private j:Ljava/util/List;

.field private k:Landroid/graphics/Rect;

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/PerformanceTracker;

    invoke-direct {v0}, Lcom/airbnb/lottie/PerformanceTracker;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/h;->a:Lcom/airbnb/lottie/PerformanceTracker;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/h;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/h;->p:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lv4/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->k:Landroid/graphics/Rect;

    return-object v0
.end method

.method public c()Landroidx/collection/y0;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->h:Landroidx/collection/y0;

    return-object v0
.end method

.method public d()F
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->e()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/h;->n:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public e()F
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/h;->m:F

    iget v1, p0, Lcom/airbnb/lottie/h;->l:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/h;->m:F

    return v0
.end method

.method public g()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->f:Ljava/util/Map;

    return-object v0
.end method

.method public h(F)F
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/h;->l:F

    iget v1, p0, Lcom/airbnb/lottie/h;->m:F

    invoke-static {v0, v1, p1}, Lv4/k;->i(FFF)F

    move-result p1

    return p1
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/h;->n:F

    return v0
.end method

.method public j()Ljava/util/Map;
    .locals 6

    invoke-static {}, Lv4/l;->e()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/h;->e:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/h;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/airbnb/lottie/h;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/l0;

    iget v5, p0, Lcom/airbnb/lottie/h;->e:F

    div-float/2addr v5, v0

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/l0;->a(F)Lcom/airbnb/lottie/l0;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/airbnb/lottie/h;->e:F

    iget-object v0, p0, Lcom/airbnb/lottie/h;->d:Ljava/util/Map;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->j:Ljava/util/List;

    return-object v0
.end method

.method public l(Ljava/lang/String;)Lp4/g;
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp4/g;

    invoke-virtual {v2, p1}, Lp4/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/h;->p:I

    return v0
.end method

.method public n()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->a:Lcom/airbnb/lottie/PerformanceTracker;

    return-object v0
.end method

.method public o(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public p()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/h;->l:F

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/h;->o:Z

    return v0
.end method

.method public r(I)V
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/h;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/airbnb/lottie/h;->p:I

    return-void
.end method

.method public s(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/x;Ljava/util/Map;Ljava/util/Map;FLandroidx/collection/y0;Ljava/util/Map;Ljava/util/List;II)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/h;->k:Landroid/graphics/Rect;

    iput p2, p0, Lcom/airbnb/lottie/h;->l:F

    iput p3, p0, Lcom/airbnb/lottie/h;->m:F

    iput p4, p0, Lcom/airbnb/lottie/h;->n:F

    iput-object p5, p0, Lcom/airbnb/lottie/h;->j:Ljava/util/List;

    iput-object p6, p0, Lcom/airbnb/lottie/h;->i:Landroidx/collection/x;

    iput-object p7, p0, Lcom/airbnb/lottie/h;->c:Ljava/util/Map;

    iput-object p8, p0, Lcom/airbnb/lottie/h;->d:Ljava/util/Map;

    iput p9, p0, Lcom/airbnb/lottie/h;->e:F

    iput-object p10, p0, Lcom/airbnb/lottie/h;->h:Landroidx/collection/y0;

    iput-object p11, p0, Lcom/airbnb/lottie/h;->f:Ljava/util/Map;

    iput-object p12, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/List;

    iput p13, p0, Lcom/airbnb/lottie/h;->q:I

    iput p14, p0, Lcom/airbnb/lottie/h;->r:I

    return-void
.end method

.method public t(J)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->i:Landroidx/collection/x;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/model/layer/Layer;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/Layer;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/Layer;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/h;->o:Z

    return-void
.end method

.method public v(Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->a:Lcom/airbnb/lottie/PerformanceTracker;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/PerformanceTracker;->b(Z)V

    return-void
.end method

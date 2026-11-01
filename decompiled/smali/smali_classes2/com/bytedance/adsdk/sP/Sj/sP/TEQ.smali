.class public Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;
.super Lcom/bytedance/adsdk/sP/Sj/sP/Jcg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/Sj/sP/Jcg<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final EjP:Landroid/graphics/PointF;

.field private final HiB:[F

.field private Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/uA;

.field private final vS:Landroid/graphics/PathMeasure;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Jcg;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->EjP:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->HiB:[F

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->vS:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public synthetic Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Landroid/graphics/PointF;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/uA;->sP()Landroid/graphics/Path;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Sj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC:Lcom/bytedance/adsdk/sP/Jcg/sP;

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/uA;

    const/4 v3, 0x0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->vS:Landroid/graphics/PathMeasure;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/uA;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->vS:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->HiB:[F

    invoke-virtual {p1, p2, v0, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->EjP:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->HiB:[F

    aget v0, p2, v3

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;->EjP:Landroid/graphics/PointF;

    return-object p1

    :cond_2
    iget-object p1, v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Jcg:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->EjP()F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq()F

    throw v2
.end method

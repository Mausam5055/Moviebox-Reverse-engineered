.class public Lcom/bytedance/adsdk/sP/Sj/sP/sef;
.super Lcom/bytedance/adsdk/sP/Sj/sP/Sj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected EjP:Lcom/bytedance/adsdk/sP/Jcg/sP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Jcg/sP<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected HiB:Lcom/bytedance/adsdk/sP/Jcg/sP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Jcg/sP<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Jcg:Landroid/graphics/PointF;

.field private final uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final vS:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->vS:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->Jcg:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->Sj(F)V

    return-void
.end method


# virtual methods
.method public synthetic Jcg()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->uA()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method synthetic Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public Sj(F)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->vS:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;->Sj()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->EjP:Lcom/bytedance/adsdk/sP/Jcg/sP;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC()Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB()F

    throw p2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->HiB:Lcom/bytedance/adsdk/sP/Jcg/sP;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC()Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB()F

    throw p2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->Jcg:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->vS:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->Jcg:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->vS:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->Jcg:Landroid/graphics/PointF;

    return-object p1
.end method

.method public uA()Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/adsdk/sP/Sj/sP/sef;->sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/bytedance/adsdk/sP/TKC/Sj/vS;
.super Lcom/bytedance/adsdk/sP/TKC/Sj/sef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/TKC/Sj/sef<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/sP/Ym;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;->Sj:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Ym;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic TKC()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;->TKC()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sP()Z
    .locals 1

    invoke-super {p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;->sP()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

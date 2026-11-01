.class public Lcom/bytedance/adsdk/sP/TKC/Sj/uA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final Sj:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

.field private final sP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/uA;->Sj:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/uA;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/sP/sef;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/uA;->Sj:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/uA;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/sP/Sj/sP/sef;-><init>(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    return-object v0
.end method

.method public TKC()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sP()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/uA;->Sj:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/uA;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

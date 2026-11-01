.class public Lcom/bytedance/adsdk/sP/TKC/Sj/HiB;
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
.field private final Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/HiB;->Sj:Ljava/util/List;

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

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/HiB;->Sj:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->HiB()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/sP/Ym;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/HiB;->Sj:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Ym;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/HiB;->Sj:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/Sj/sP/TEQ;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public TKC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/HiB;->Sj:Ljava/util/List;

    return-object v0
.end method

.method public sP()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/HiB;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/HiB;->Sj:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->HiB()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

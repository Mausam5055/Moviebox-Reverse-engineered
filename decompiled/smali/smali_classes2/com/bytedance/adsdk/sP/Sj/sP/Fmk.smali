.class public Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;
.super Lcom/bytedance/adsdk/sP/Sj/sP/Sj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
        "Lcom/bytedance/adsdk/sP/TKC/sP/sef;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final EjP:Lcom/bytedance/adsdk/sP/TKC/sP/sef;

.field private final HiB:Landroid/graphics/Path;

.field private vS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/RiZ;",
            ">;"
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
            "Lcom/bytedance/adsdk/sP/TKC/sP/sef;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/bytedance/adsdk/sP/TKC/sP/sef;

    invoke-direct {p1}, Lcom/bytedance/adsdk/sP/TKC/sP/sef;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/sef;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;->HiB:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public synthetic Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;->sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/RiZ;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;->vS:Ljava/util/List;

    return-void
.end method

.method public sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/sef;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    iget-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Sj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/adsdk/sP/TKC/sP/sef;

    iget-object p1, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->sP:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/adsdk/sP/TKC/sP/sef;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/sef;

    invoke-virtual {v1, v0, p1, p2}, Lcom/bytedance/adsdk/sP/TKC/sP/sef;->Sj(Lcom/bytedance/adsdk/sP/TKC/sP/sef;Lcom/bytedance/adsdk/sP/TKC/sP/sef;F)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/sef;

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;->vS:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;->vS:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/Sj/RiZ;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/Sj/RiZ;->Sj(Lcom/bytedance/adsdk/sP/TKC/sP/sef;)Lcom/bytedance/adsdk/sP/TKC/sP/sef;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;->HiB:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/sP/vS/HiB;->Sj(Lcom/bytedance/adsdk/sP/TKC/sP/sef;Landroid/graphics/Path;)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;->HiB:Landroid/graphics/Path;

    return-object p1
.end method

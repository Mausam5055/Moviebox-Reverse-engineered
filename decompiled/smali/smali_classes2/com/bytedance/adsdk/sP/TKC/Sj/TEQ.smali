.class public Lcom/bytedance/adsdk/sP/TKC/Sj/TEQ;
.super Lcom/bytedance/adsdk/sP/TKC/Sj/sef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/TKC/Sj/sef<",
        "Lcom/bytedance/adsdk/sP/TKC/sP;",
        "Lcom/bytedance/adsdk/sP/TKC/sP;",
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
            "Lcom/bytedance/adsdk/sP/TKC/sP;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/adsdk/sP/Sj/sP/Zq;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/sP/Zq;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;->Sj:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Zq;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public synthetic Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/TEQ;->EjP()Lcom/bytedance/adsdk/sP/Sj/sP/Zq;

    move-result-object v0

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

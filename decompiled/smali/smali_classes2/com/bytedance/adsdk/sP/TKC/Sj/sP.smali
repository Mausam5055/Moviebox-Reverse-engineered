.class public Lcom/bytedance/adsdk/sP/TKC/Sj/sP;
.super Lcom/bytedance/adsdk/sP/TKC/Sj/sef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/TKC/Sj/sef<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;->Sj:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;-><init>(Ljava/util/List;)V

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

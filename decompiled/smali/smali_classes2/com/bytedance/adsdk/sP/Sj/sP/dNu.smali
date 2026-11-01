.class public Lcom/bytedance/adsdk/sP/Sj/sP/dNu;
.super Lcom/bytedance/adsdk/sP/Sj/sP/Sj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
        "TK;TA;>;"
    }
.end annotation


# virtual methods
.method public Jcg()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TK;>;F)TA;"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public Sj(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->sP:F

    return-void
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC:Lcom/bytedance/adsdk/sP/Jcg/sP;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->sP()V

    :cond_0
    return-void
.end method

.method vS()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

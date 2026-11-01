.class public Lcom/bytedance/adsdk/sP/Sj/sP/Zq;
.super Lcom/bytedance/adsdk/sP/Sj/sP/Jcg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/Sj/sP/Jcg<",
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

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Jcg;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/sP/Sj/sP/Zq;->sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Lcom/bytedance/adsdk/sP/TKC/sP;

    move-result-object p1

    return-object p1
.end method

.method sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Lcom/bytedance/adsdk/sP/TKC/sP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP;",
            ">;F)",
            "Lcom/bytedance/adsdk/sP/TKC/sP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC:Lcom/bytedance/adsdk/sP/Jcg/sP;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Jcg:Ljava/lang/Float;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB()F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq()F

    const/4 p1, 0x0

    throw p1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_3

    iget-object p2, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->sP:Ljava/lang/Object;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    check-cast p2, Lcom/bytedance/adsdk/sP/TKC/sP;

    return-object p2

    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Sj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/adsdk/sP/TKC/sP;

    return-object p1
.end method

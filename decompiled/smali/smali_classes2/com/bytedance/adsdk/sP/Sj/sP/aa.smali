.class public Lcom/bytedance/adsdk/sP/Sj/sP/aa;
.super Lcom/bytedance/adsdk/sP/Sj/sP/Jcg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/Sj/sP/Jcg<",
        "Lcom/bytedance/adsdk/sP/Jcg/TKC;",
        ">;"
    }
.end annotation


# instance fields
.field private final EjP:Lcom/bytedance/adsdk/sP/Jcg/TKC;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Lcom/bytedance/adsdk/sP/Jcg/TKC;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Jcg;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/bytedance/adsdk/sP/Jcg/TKC;

    invoke-direct {p1}, Lcom/bytedance/adsdk/sP/Jcg/TKC;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/aa;->EjP:Lcom/bytedance/adsdk/sP/Jcg/TKC;

    return-void
.end method


# virtual methods
.method public synthetic Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/sP/Sj/sP/aa;->sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Lcom/bytedance/adsdk/sP/Jcg/TKC;

    move-result-object p1

    return-object p1
.end method

.method public sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Lcom/bytedance/adsdk/sP/Jcg/TKC;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Lcom/bytedance/adsdk/sP/Jcg/TKC;",
            ">;F)",
            "Lcom/bytedance/adsdk/sP/Jcg/TKC;"
        }
    .end annotation

    iget-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Sj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->sP:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/adsdk/sP/Jcg/TKC;

    check-cast v1, Lcom/bytedance/adsdk/sP/Jcg/TKC;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC:Lcom/bytedance/adsdk/sP/Jcg/sP;

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/aa;->EjP:Lcom/bytedance/adsdk/sP/Jcg/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/TKC;->Sj()F

    move-result v2

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Jcg/TKC;->Sj()F

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/bytedance/adsdk/sP/vS/HiB;->Sj(FFF)F

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/TKC;->sP()F

    move-result v0

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Jcg/TKC;->sP()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/bytedance/adsdk/sP/vS/HiB;->Sj(FFF)F

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/bytedance/adsdk/sP/Jcg/TKC;->Sj(FF)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/aa;->EjP:Lcom/bytedance/adsdk/sP/Jcg/TKC;

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Jcg:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->EjP()F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq()F

    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public Lcom/bytedance/adsdk/ugeno/EjP/TKC/Sj;
.super Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP(Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "SwiperView"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/sP;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/bytedance/adsdk/ugeno/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP;->TKC()V

    :cond_2
    return-void
.end method

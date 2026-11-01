.class public Lcom/bytedance/adsdk/ugeno/EjP/TKC/sP;
.super Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->vS:Ljava/util/Map;

    const-string v1, "position"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v1, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP(Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "SwiperView"

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v1

    instance-of v2, v1, Lcom/bytedance/adsdk/ugeno/sP;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/bytedance/adsdk/ugeno/sP;

    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/sP;->Sj(I)V

    :cond_2
    return-void
.end method

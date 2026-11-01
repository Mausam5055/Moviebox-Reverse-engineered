.class public Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;
.super Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;


# instance fields
.field private Dq:Lcom/bytedance/adsdk/ugeno/core/aa;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->ib()Lcom/bytedance/adsdk/ugeno/core/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;->Dq:Lcom/bytedance/adsdk/ugeno/core/aa;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->Jcg:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/core/aa;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V

    :cond_0
    return-void
.end method

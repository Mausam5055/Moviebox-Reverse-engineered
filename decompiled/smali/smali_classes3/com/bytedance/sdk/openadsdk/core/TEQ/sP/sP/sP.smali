.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/sP;
.super Lcom/bytedance/adsdk/ugeno/uA/Jcg/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/Jcg/Sj;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;->getVideoView()Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Sj()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/sP;->TKC()Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;

    move-result-object v0

    return-object v0
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/uA/Jcg/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public TKC()Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/Sj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V

    return-object v0
.end method

.method public sP()V
    .locals 0

    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/uA/Jcg/Sj;->sP()V

    return-void
.end method

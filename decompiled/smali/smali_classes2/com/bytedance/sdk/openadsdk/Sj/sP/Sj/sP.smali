.class public Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/sP;
.super Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method


# virtual methods
.method protected Sj()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->uA:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Ym:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->getVideoController()Lu5/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj(Lu5/b;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TKC()V

    return-void
.end method

.method public sP()Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

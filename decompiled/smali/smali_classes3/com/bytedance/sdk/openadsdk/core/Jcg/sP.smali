.class public Lcom/bytedance/sdk/openadsdk/core/Jcg/sP;
.super Ljava/lang/Object;


# direct methods
.method public static Sj()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/TKC/Sj;->sP()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj;->sP()Z

    move-result v0

    return v0
.end method

.method public static Sj(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/TKC/Sj;->Sj(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj;->Sj(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static sP()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/TKC/Sj;->TKC()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj;->TKC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;
.super Ljava/lang/Object;


# direct methods
.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/TKC;->Sj()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Dq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

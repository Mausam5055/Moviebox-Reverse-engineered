.class public Lcom/bytedance/sdk/openadsdk/component/reward/sP/Jcg;
.super Ljava/lang/Object;


# direct methods
.method public static Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->Qne()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TEQ;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TEQ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Dq;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Dq;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-object v0

    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-object v0

    :cond_3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TEQ;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TEQ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-object v0

    :cond_4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-object v0

    :cond_5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TKC;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TKC;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-object v0

    :cond_6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/HiB;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-object v0
.end method

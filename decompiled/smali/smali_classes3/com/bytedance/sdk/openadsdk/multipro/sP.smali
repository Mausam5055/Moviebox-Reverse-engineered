.class public Lcom/bytedance/sdk/openadsdk/multipro/sP;
.super Ljava/lang/Object;


# static fields
.field public static Sj:Ljava/lang/Boolean;


# direct methods
.method public static Sj()V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/sP;->Sj:Ljava/lang/Boolean;

    const-string v1, "is_support_multi_process"

    const-string v2, "sp_multi_info"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static TKC()Z
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/sP;->Sj:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->HiB()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/sP;->Sj:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    const-string v0, "sp_multi_info"

    const-string v2, "is_support_multi_process"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/sP;->Sj:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/sP;->Sj:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static sP()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/sP;->Sj:Ljava/lang/Boolean;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->Sj:Z

    return-void
.end method

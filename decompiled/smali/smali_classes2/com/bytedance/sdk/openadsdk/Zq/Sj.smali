.class public Lcom/bytedance/sdk/openadsdk/Zq/Sj;
.super Ljava/lang/Object;


# direct methods
.method public static Sj()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/Sj$1;

    const-string v1, "DailyTaskHelper"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj;->TKC()V

    return-void
.end method

.method private static TKC()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->sP()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->Sj()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/zR;->Sj()V

    return-void
.end method

.method static synthetic sP()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj;->TKC()V

    return-void
.end method

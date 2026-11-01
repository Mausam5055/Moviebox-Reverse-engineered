.class public Lcom/bytedance/sdk/openadsdk/kF/sP/EjP;
.super Ljava/lang/Object;


# direct methods
.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ov()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;

    const-string v1, "mrc_report"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

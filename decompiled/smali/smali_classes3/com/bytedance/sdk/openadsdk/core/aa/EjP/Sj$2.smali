.class Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->xD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->vb(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Grp(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Ov(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->tX(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Aw(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(ZJZ)V

    return-void
.end method

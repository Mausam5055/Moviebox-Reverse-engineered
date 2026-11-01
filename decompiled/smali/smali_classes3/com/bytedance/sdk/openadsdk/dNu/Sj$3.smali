.class Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Z

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/dNu/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dNu/Sj;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;->Sj:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->EjP(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)I

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;->Sj:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;->Sj()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;->Sj(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->sP()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/sP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getUploadIntervalTime()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/sP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/sP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->vS(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_0
    const-string v1, "BusMonitorCenter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

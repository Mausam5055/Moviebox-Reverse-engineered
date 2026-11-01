.class Lcom/bytedance/sdk/openadsdk/sU/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/sU/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj(Lcom/bytedance/sdk/openadsdk/sU/sP;)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/sU/sP;->Sj(Lcom/bytedance/sdk/openadsdk/sU/sP;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/sU/sP;->sP(Lcom/bytedance/sdk/openadsdk/sU/sP;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/sP;->TKC(Lcom/bytedance/sdk/openadsdk/sU/sP;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/sP;->EjP(Lcom/bytedance/sdk/openadsdk/sU/sP;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/sP;->EjP(Lcom/bytedance/sdk/openadsdk/sU/sP;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Automatic detection of stuck"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/sP;->HiB(Lcom/bytedance/sdk/openadsdk/sU/sP;)Lcom/bytedance/sdk/openadsdk/sU/sP$Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/sP;->HiB(Lcom/bytedance/sdk/openadsdk/sU/sP;)Lcom/bytedance/sdk/openadsdk/sU/sP$Sj;

    :cond_1
    return-void
.end method

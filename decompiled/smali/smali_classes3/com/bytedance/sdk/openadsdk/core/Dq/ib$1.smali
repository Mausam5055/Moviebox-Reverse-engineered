.class Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/ib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->Qne()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sP(Z)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Ym()Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->TKC()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->HiB(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)V

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->vS(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

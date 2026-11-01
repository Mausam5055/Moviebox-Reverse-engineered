.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)Lcom/bytedance/sdk/openadsdk/IBinderPool;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)Lcom/bytedance/sdk/openadsdk/IBinderPool;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->sP(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TTAD.BinderPool"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;Lcom/bytedance/sdk/openadsdk/IBinderPool;)Lcom/bytedance/sdk/openadsdk/IBinderPool;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)V

    return-void
.end method

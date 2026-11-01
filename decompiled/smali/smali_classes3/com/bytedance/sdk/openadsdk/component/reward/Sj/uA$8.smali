.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/aa/HiB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$8;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$8;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$8;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eEJ()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$8;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->uvD(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$8;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$8;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public Sj(I)V
    .locals 0

    return-void
.end method

.method public sP()V
    .locals 0

    return-void
.end method

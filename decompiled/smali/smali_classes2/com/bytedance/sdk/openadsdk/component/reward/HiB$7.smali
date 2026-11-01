.class Lcom/bytedance/sdk/openadsdk/component/reward/HiB$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/wE$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/HiB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/HiB;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$7;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/content/Context;Landroid/content/Intent;ZI)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$7;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/HiB;)Lcom/bytedance/sdk/component/Dq/Dq;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$7;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/sP;

    const-string p3, "fsv net connect task"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/HiB;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/sP;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/HiB;Lcom/bytedance/sdk/component/Dq/Dq;)Lcom/bytedance/sdk/component/Dq/Dq;

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->Sj()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/HiB$7;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/HiB;)Lcom/bytedance/sdk/component/Dq/Dq;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

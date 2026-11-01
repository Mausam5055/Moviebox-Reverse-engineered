.class Lcom/bytedance/sdk/openadsdk/activity/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/sP;->sU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reward_verify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Zq()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_has_give_up_reward"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/sP;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/vS;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/activity/HiB;->TKC(I)V

    return-void

    :cond_2
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP(I)V

    :cond_3
    :goto_0
    return-void
.end method

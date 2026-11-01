.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$2;
.super Lcom/bytedance/sdk/openadsdk/sU/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/aa/vS;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;Lcom/bytedance/sdk/openadsdk/aa/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$2;->Sj:Lcom/bytedance/sdk/openadsdk/aa/vS;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/openadsdk/sU/EjP;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->RiZ()Lcom/bytedance/sdk/openadsdk/sU/EjP;

    move-result-object v0

    return-object v0
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Sj;->Sj(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Sj(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playable_track"

    invoke-static {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA$2;->Sj:Lcom/bytedance/sdk/openadsdk/aa/vS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/aa/vS;->Sj()V

    :cond_0
    return-void
.end method

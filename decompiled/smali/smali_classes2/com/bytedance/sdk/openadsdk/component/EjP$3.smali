.class Lcom/bytedance/sdk/openadsdk/component/EjP$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/EjP;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uP(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP;->EjP(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP;->EjP(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ODI()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP;->HiB(Lcom/bytedance/sdk/openadsdk/component/EjP;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/vS;->Jcg(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

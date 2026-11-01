.class public Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;


# instance fields
.field private Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj()Lcom/bytedance/sdk/openadsdk/core/kF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kF;->TKC()Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj()Lcom/bytedance/sdk/openadsdk/core/kF;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/kF;->EjP()Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sP;->Sj(Landroid/content/Intent;Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-direct {v3, p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v3, p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj()Lcom/bytedance/sdk/openadsdk/core/kF;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj()Lcom/bytedance/sdk/openadsdk/core/kF;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/sef;->Sj()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onPause()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Z)V

    :cond_0
    return-void
.end method

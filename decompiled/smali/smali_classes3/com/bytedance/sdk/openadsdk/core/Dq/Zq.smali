.class public Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;
.super Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private uvD:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;ZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->uvD:Z

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setNeedNativeVideoPlayBtnVisible(Z)V

    return-void
.end method

.method private TzV()V
    .locals 7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    invoke-virtual {v0}, Ly5/b;->r()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    invoke-virtual {v0}, Ly5/b;->t()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    invoke-virtual {v0}, Ly5/b;->C()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->dNu()V

    return-void
.end method

.method private dNu()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected HiB()V
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method public Sj(II)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sP(II)V

    :cond_0
    return-void
.end method

.method protected Sj(Z)V
    .locals 0

    return-void
.end method

.method protected TKC()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->uvD:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TKC()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->TKC()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->TzV()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->TzV()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method protected sP()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HiB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    :cond_1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->uvD:Z

    return-void
.end method

.method public setShouldCheckNetChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu5/b;->EjP(Z)V

    :cond_0
    return-void
.end method

.method public setShowAdInteractionView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->Fmk()Lu5/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu5/c;->Sj(Z)V

    :cond_0
    return-void
.end method

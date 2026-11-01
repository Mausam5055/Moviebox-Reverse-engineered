.class public abstract Lcom/bytedance/sdk/openadsdk/component/uA/TKC;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;


# instance fields
.field final Dq:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

.field EjP:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

.field HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

.field TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

.field Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field aa:Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

.field sP:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

.field uA:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

.field vS:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    return-void
.end method


# virtual methods
.method public abstract getAdIconView()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
.end method

.method public getAdLogo()Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    return-object v0
.end method

.method public abstract getAdTitleTextView()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
.end method

.method public getBackImage()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    return-object v0
.end method

.method public getClickButton()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    return-object v0
.end method

.method public getContent()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    return-object v0
.end method

.method public getDspAdChoice()Lcom/bytedance/sdk/openadsdk/core/widget/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->aa:Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    return-object v0
.end method

.method public getHostAppIcon()Lcom/bytedance/sdk/openadsdk/core/widget/uvD;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    return-object v0
.end method

.method public getHostAppName()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    return-object v0
.end method

.method public getIconOnlyView()Lcom/bytedance/sdk/openadsdk/core/widget/uvD;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->uA:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    return-object v0
.end method

.method public getImageView()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    return-object v0
.end method

.method public getOverlayLayout()Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getScoreBar()Lcom/bytedance/sdk/openadsdk/core/widget/Zq;
.end method

.method public getTitle()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    return-object v0
.end method

.method public getTopCountDown()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;->getTopCountDown()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopDisLike()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;->getTopDislike()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopSkip()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;->getTopSkip()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getUserInfo()Landroid/view/View;
.end method

.method public getVideoContainer()Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    return-object v0
.end method

.class public Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;
.super Landroid/view/View;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj<",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;",
        ">;"
    }
.end annotation


# instance fields
.field private Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj<",
            "Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private Sj(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    if-eqz p1, :cond_1

    sget p2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Snq:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;
    .locals 2
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->load(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_1
    return-object p0
.end method

.method public clickSkip()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->clickSkip()V

    :cond_0
    return-void
.end method

.method public clickSound(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->clickSound(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    return-void
.end method

.method public getCloseButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->getCloseButton()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getITopLayout()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/sP;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/sP;)V

    :cond_0
    return-void
.end method

.method public setShowDislike(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->setShowDislike(Z)V

    :cond_0
    return-void
.end method

.method public setShowSkip(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->setShowSkip(Z)V

    :cond_0
    return-void
.end method

.method public setShowSound(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->setShowSound(Z)V

    :cond_0
    return-void
.end method

.method public setSkipEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->setSkipEnable(Z)V

    :cond_0
    return-void
.end method

.method public setSkipInvisiable()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->setSkipInvisiable()V

    :cond_0
    return-void
.end method

.method public setSkipText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->setSkipText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSoundMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->setSoundMute(Z)V

    :cond_0
    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->setTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showCloseButton()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->showCloseButton()V

    :cond_0
    return-void
.end method

.method public showCountDownText()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->showCountDownText()V

    :cond_0
    return-void
.end method

.method public showSkipButton()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/Sj;->showSkipButton()V

    :cond_0
    return-void
.end method

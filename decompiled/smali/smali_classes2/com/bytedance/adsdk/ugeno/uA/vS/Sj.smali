.class public Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;
.super Landroid/widget/TextView;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Sj/HiB;
.implements Lcom/bytedance/adsdk/ugeno/core/IAnimation;


# instance fields
.field private Sj:Lcom/bytedance/adsdk/ugeno/EjP;

.field private TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

.field private sP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/EjP;->sP(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getBorderRadius()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj()F

    move-result v0

    return v0
.end method

.method public getRipple()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->sP:F

    return v0
.end method

.method public getRubIn()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->getRubIn()F

    move-result v0

    return v0
.end method

.method public getShine()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->getShine()F

    move-result v0

    return v0
.end method

.method public getStretch()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->getStretch()F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Jcg()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Dq()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(Landroid/graphics/Canvas;Lcom/bytedance/adsdk/ugeno/core/IAnimation;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(IIII)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(II)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->onMeasure(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    iget-object p4, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz p4, :cond_0

    invoke-interface {p4, p1, p2, p3, p3}, Lcom/bytedance/adsdk/ugeno/EjP;->sP(IIII)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj(I)V

    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj(F)V

    :cond_0
    return-void
.end method

.method public setRipple(F)V
    .locals 1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->sP:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->sP(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setRubIn(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->HiB(F)V

    :cond_0
    return-void
.end method

.method public setShine(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->TKC(F)V

    :cond_0
    return-void
.end method

.method public setStretch(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->EjP(F)V

    :cond_0
    return-void
.end method

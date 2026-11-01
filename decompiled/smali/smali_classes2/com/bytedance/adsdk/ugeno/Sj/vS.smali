.class public Lcom/bytedance/adsdk/ugeno/Sj/vS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Sj/HiB;


# instance fields
.field private EjP:F

.field private HiB:F

.field private Sj:Landroid/view/View;

.field private TKC:F

.field private sP:F

.field private vS:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public EjP(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->HiB:F

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public HiB(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->vS:F

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public Sj()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->sP:F

    return v0
.end method

.method public Sj(F)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->sP:F

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1
    return-void
.end method

.method public Sj(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void

    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_2
    return-void
.end method

.method public TKC(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->EjP:F

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public getRipple()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->TKC:F

    return v0
.end method

.method public getRubIn()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->vS:F

    return v0
.end method

.method public getShine()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->EjP:F

    return v0
.end method

.method public getStretch()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->HiB:F

    return v0
.end method

.method public sP(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/vS;->TKC:F

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

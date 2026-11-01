.class Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(ILcom/bytedance/sdk/component/adexpress/sP/sef;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dq:I

.field final synthetic EjP:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic Fmk:I

.field final synthetic HiB:I

.field final synthetic Jcg:I

.field final synthetic Sj:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic TEQ:I

.field final synthetic TKC:F

.field final synthetic Ym:I

.field final synthetic aa:I

.field final synthetic sP:F

.field final synthetic sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

.field final synthetic uA:I

.field final synthetic vS:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Landroid/widget/LinearLayout$LayoutParams;FFLandroid/widget/FrameLayout$LayoutParams;IIIIIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Sj:Landroid/widget/LinearLayout$LayoutParams;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sP:F

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->TKC:F

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->EjP:Landroid/widget/FrameLayout$LayoutParams;

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->HiB:I

    iput p7, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->vS:I

    iput p8, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Jcg:I

    iput p9, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Dq:I

    iput p10, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->uA:I

    iput p11, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->TEQ:I

    iput p12, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Ym:I

    iput p13, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->aa:I

    iput p14, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Fmk:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Sj:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sP:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->TKC:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Yf(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Sj:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v2, 0x42c80000    # 100.0f

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Sj:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Yf(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Yf(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;I)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->EjP:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->HiB:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->vS:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Jcg:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Dq:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->uA:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->TEQ:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Ym:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->aa:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->EjP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Fmk:I

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tt_ad_zoom_down"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tt_ad_zoom_up"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->sef:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;->Fmk:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7
    return-void
.end method

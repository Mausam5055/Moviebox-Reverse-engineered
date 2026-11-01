.class public Lcom/bytedance/sdk/component/adexpress/vS/Sj;
.super Landroid/widget/TextSwitcher;

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;


# instance fields
.field private Dq:I

.field private final EjP:I

.field private Fmk:I

.field private HiB:Landroid/content/Context;

.field private Jcg:I

.field Sj:Landroid/view/animation/Animation$AnimationListener;

.field private TEQ:I

.field private TKC:I

.field private Ym:I

.field private aa:I

.field private sP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sef:Landroid/os/Handler;

.field private uA:F

.field private vS:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IFII)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sP:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->TKC:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->EjP:I

    new-instance v0, Lcom/bytedance/sdk/component/utils/LqL;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sef:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/vS/Sj$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/vS/Sj$1;-><init>(Lcom/bytedance/sdk/component/adexpress/vS/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Sj:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->HiB:Landroid/content/Context;

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Dq:I

    iput p3, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->uA:F

    iput p4, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->TEQ:I

    iput p5, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Fmk:I

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->TKC()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/vS/Sj;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->vS:Landroid/widget/TextView;

    return-object p0
.end method

.method private TKC()V
    .locals 0

    invoke-virtual {p0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->aa:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->HiB:Landroid/content/Context;

    const-string v3, "tt_text_animation_y_in"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/ib;->uA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->HiB:Landroid/content/Context;

    const-string v3, "tt_text_animation_y_out"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/ib;->uA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->HiB:Landroid/content/Context;

    const-string v3, "tt_text_animation_x_in"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/ib;->uA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->HiB:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/ib;->uA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Sj:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Sj:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sef:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sP()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sef:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Jcg:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->vS:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Dq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->vS:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->uA:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->vS:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->TEQ:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->vS:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Fmk:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->vS:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/TextSwitcher;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sef:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Jcg:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextSwitcher;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sef:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sP:Ljava/util/List;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Ym:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->uA:F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->sP(Ljava/lang/String;FZ)[I

    move-result-object v0

    aget v0, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p1}, Landroid/widget/TextSwitcher;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextSwitcher;->onMeasure(II)V

    return-void
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sP:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->TKC:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->TKC:I

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Ym:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sP:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->TKC:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->TKC:I

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Jcg:I

    return-void
.end method

.method public setAnimationText(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->sP:Ljava/util/List;

    return-void
.end method

.method public setAnimationType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->aa:I

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->TEQ:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Dq:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->uA:F

    return-void
.end method

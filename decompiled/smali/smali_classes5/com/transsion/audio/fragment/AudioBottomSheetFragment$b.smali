.class public final Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;
.super Lj00/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-direct {p0}, Lj00/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->w0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 5

    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->r0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/tn/lib/view/GradientLinePagerIndicator;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->r0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/tn/lib/view/GradientLinePagerIndicator;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->r0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/tn/lib/view/GradientLinePagerIndicator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->r0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/tn/lib/view/GradientLinePagerIndicator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    new-instance v0, Lcom/tn/lib/view/GradientLinePagerIndicator;

    iget-object v1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setMode(I)V

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineHeight(F)V

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineWidth(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setRoundRadius(F)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/tn/lib/widget/R$color;->brand_gradient_start:I

    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$color;->brand_gradient_center:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/tn/lib/widget/R$color;->brand_gradient_end:I

    invoke-static {v1, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    invoke-static {p1, v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->y0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;Lcom/tn/lib/view/GradientLinePagerIndicator;)V

    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->r0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/tn/lib/view/GradientLinePagerIndicator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p1
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 2

    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->x0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Lcom/transsion/baseui/widget/RoomSimplePagerTitleView;

    move-result-object p1

    if-eqz p1, :cond_0

    aget-object p1, p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->w0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object p2, v0, p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/transsion/baseui/widget/RoomSimplePagerTitleView;

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/transsion/baseui/widget/RoomSimplePagerTitleView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->w0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    aget-object v1, v1, p2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v1, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b$a;

    invoke-direct {v1, v0, p2}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b$a;-><init>(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->x0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Lcom/transsion/baseui/widget/RoomSimplePagerTitleView;

    move-result-object v0

    if-eqz v0, :cond_4

    aput-object p1, v0, p2

    :cond_4
    return-object p1
.end method

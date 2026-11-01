.class public final Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;
.super Lj00/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-direct {p0}, Lj00/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->h0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/tn/lib/view/GradientLinePagerIndicator;

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setMode(I)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineHeight(F)V

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineWidth(F)V

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setRoundRadius(F)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->brand_gradient_start:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/tn/lib/widget/R$color;->brand_gradient_center:I

    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/tn/lib/widget/R$color;->brand_gradient_end:I

    invoke-static {v0, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    return-object p1
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;

    invoke-direct {v0, p1}, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->h0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)[Ljava/lang/Integer;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->setTextById(I)V

    new-instance v1, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;

    invoke-direct {v1, p1, p2}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;-><init>(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->g0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.class public final Lcom/transsion/transfer/impl/TransferStatusActivity$c;
.super Lj00/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/transfer/impl/TransferStatusActivity;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$c;->b:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-direct {p0}, Lj00/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$c;->b:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->E0(Lcom/transsion/transfer/impl/TransferStatusActivity;)[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tn/lib/view/GradientLinePagerIndicator;

    invoke-direct {v0, p1}, Lcom/tn/lib/view/GradientLinePagerIndicator;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setMode(I)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineHeight(F)V

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineWidth(F)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setRoundRadius(F)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    sget v1, Lcom/tn/lib/widget/R$color;->main_gradient_start:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/tn/lib/widget/R$color;->main_gradient_center:I

    invoke-static {p1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/tn/lib/widget/R$color;->main_gradient_end:I

    invoke-static {p1, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    return-object v0
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/transfer/impl/view/TabTitleView;

    invoke-direct {v0, p1}, Lcom/transsion/transfer/impl/view/TabTitleView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$c;->b:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->E0(Lcom/transsion/transfer/impl/TransferStatusActivity;)[Ljava/lang/Integer;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/view/TabTitleView;->setTextById(I)V

    new-instance v1, Lcom/transsion/transfer/impl/TransferStatusActivity$c$a;

    invoke-direct {v1, p1, p2}, Lcom/transsion/transfer/impl/TransferStatusActivity$c$a;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
